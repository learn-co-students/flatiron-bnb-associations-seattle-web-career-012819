class CreateReservations < ActiveRecord::Migration

  def change
    create_table :reservations do |t|
      t.integer :listing_id
      t.integer :guest_id
      t.datetime :checkin
      t.datetime :checkout
    end
  end

end
