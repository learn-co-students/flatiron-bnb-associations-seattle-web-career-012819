class CreateReservationTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin_time
      t.datetime :checkout_time
      t.integer :listing_id
      t.integer :guest_id
    end
  end
end
