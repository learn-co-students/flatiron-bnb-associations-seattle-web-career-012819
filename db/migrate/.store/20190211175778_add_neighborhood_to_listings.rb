class AddNeighborhoodToListings < ActiveRecord::Migration
  def change
    add_column :listings, :neighborhood, :integer
  end
end
