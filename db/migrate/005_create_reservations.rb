class CreateReservations < ActiveRecord::Migration[5.1]
    def change
        create_table :reservations do |t|
            t.string :name
            
            t.integer :guest_id
            t.integer :listing_id
        end
    end
end