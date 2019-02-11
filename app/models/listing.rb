class Listing < ActiveRecord::Base
  belongs_to :host, class_name: "User"
  has_many :reservations
  belongs_to :neighborhood
  has_many :reviews, through: :reservations
  has_many :guests, :class_name => "User", through: :reservations
end
