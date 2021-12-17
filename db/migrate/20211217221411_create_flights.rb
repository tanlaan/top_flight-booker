class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.datetime :start
      t.integer :duration
      t.belongs_to :departing_airport, null: false, foreign_key: {to_table: :airports}
      t.belongs_to :arriving_airport, null: false, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
