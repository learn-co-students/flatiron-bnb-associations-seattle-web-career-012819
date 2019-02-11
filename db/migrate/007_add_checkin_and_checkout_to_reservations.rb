class AddCheckinAndCheckoutToReservations < ActiveRecord::Migration
    def change
        add_column :reservations, :checkin, :datetime
        add_column :reservations, :checkout, :datetime
    end
end