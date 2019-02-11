class CreateNeighborhoods < ActiveRecord::Migration[5.1]
    def change
        create_table :neighborhoods do |t|
            t.string :name
            
            t.integer :city_id
        end
    end
end