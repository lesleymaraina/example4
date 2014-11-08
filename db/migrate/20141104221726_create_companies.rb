class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :names
      t.integer :Cell
      t.integer :CD22

      t.timestamps
    end
  end
end
