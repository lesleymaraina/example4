class BCellsController < ApplicationController
  before_action :set_b_cell, only: [:show, :edit, :update, :destroy]

  # GET /b_cells
  # GET /b_cells.json
  def index
    @b_cells = BCell.all
  end

  # GET /b_cells/1
  # GET /b_cells/1.json
  def show
  end

  # GET /b_cells/new
  def new
    @b_cell = BCell.new
  end

  # GET /b_cells/1/edit
  def edit
  end

  # POST /b_cells
  # POST /b_cells.json
  def create
    @b_cell = BCell.new(b_cell_params)

    respond_to do |format|
      if @b_cell.save
        format.html { redirect_to @b_cell, notice: 'B cell was successfully created.' }
        format.json { render :show, status: :created, location: @b_cell }
      else
        format.html { render :new }
        format.json { render json: @b_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_cells/1
  # PATCH/PUT /b_cells/1.json
  def update
    respond_to do |format|
      if @b_cell.update(b_cell_params)
        format.html { redirect_to @b_cell, notice: 'B cell was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_cell }
      else
        format.html { render :edit }
        format.json { render json: @b_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_cells/1
  # DELETE /b_cells/1.json
  def destroy
    @b_cell.destroy
    respond_to do |format|
      format.html { redirect_to b_cells_url, notice: 'B cell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def import
  B_cells.import(params[:file])
  redirect_to b_cells_path, notice: "BCells added successfully"
end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_cell
      @b_cell = BCell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_cell_params
      params.require(:b_cell).permit(:name, :Cells, :CD21)
    end
end
