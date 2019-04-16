class CreateBooking < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :flight
    end
  end
end
