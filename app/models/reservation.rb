require 'date'
require 'pry'

class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :user
  belongs_to :guest, :class_name => "User"
  belongs_to :host, :class_name => "User"
  has_many :reviews
end
