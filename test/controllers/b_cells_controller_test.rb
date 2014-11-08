require 'test_helper'

class BCellsControllerTest < ActionController::TestCase
  setup do
    @b_cell = b_cells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_cells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_cell" do
    assert_difference('BCell.count') do
      post :create, b_cell: { CD21: @b_cell.CD21, Cells: @b_cell.Cells, name: @b_cell.name }
    end

    assert_redirected_to b_cell_path(assigns(:b_cell))
  end

  test "should show b_cell" do
    get :show, id: @b_cell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_cell
    assert_response :success
  end

  test "should update b_cell" do
    patch :update, id: @b_cell, b_cell: { CD21: @b_cell.CD21, Cells: @b_cell.Cells, name: @b_cell.name }
    assert_redirected_to b_cell_path(assigns(:b_cell))
  end

  test "should destroy b_cell" do
    assert_difference('BCell.count', -1) do
      delete :destroy, id: @b_cell
    end

    assert_redirected_to b_cells_path
  end
end
