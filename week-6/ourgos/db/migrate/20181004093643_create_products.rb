class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :stock
      t.float :price
      t.integer :cat_num
      t.string :picture

      t.timestamps
    end
  end
end
