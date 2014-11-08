class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.string :names
      t.integer :Cell
      t.integer :CD22

      t.timestamps
    end
  end
end
