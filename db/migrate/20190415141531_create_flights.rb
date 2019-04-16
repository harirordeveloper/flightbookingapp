class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.datetime :arrival_time
      t.datetime :departure_time
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
