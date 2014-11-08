class CreateBCells < ActiveRecord::Migration
  def change
    create_table :b_cells do |t|
      t.string :name
      t.integer :Cells
      t.integer :CD21

      t.timestamps
    end
  end
end
