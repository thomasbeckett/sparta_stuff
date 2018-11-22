class CreatePhilosophers < ActiveRecord::Migration[5.2]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :nationality
      t.string :university

      t.timestamps
    end
  end
end
