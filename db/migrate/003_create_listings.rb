class CreateListings < ActiveRecord::Migration
    def change
        create_table :listings do |t|
            t.string :title
            t.string :listing_type
            t.string :address
            t.float :price, precision: 6, scale: 2
            t.text :description

            t.integer :host_id
            t.integer :neighborhood_id
        end
    end
end