class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.text :title
      t.text :description
      t.decimal :price
      t.references :neighborhood
      t.references :host
    end
  end
end
