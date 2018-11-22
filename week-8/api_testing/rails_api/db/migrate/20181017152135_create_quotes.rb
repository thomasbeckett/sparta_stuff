class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :quote
      t.string :philosopher_id

      t.timestamps
    end
  end
end
