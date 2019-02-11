class Neighborhood < ActiveRecord::Base[5.1]
    belongs_to :city
    has_many :listings
end