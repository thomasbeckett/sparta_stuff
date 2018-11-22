class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :country
      t.string :zip
      t.integer :person_id

      t.timestamps
    end
  end
end
