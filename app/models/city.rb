class City < ActiveRecord::Base[5.1]
    has_many :neighborhoods
    has_many :listings, through: :neighborhoods
end