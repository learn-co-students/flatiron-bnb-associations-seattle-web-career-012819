class Reservation < ActiveRecord::Base[5.1]
    belongs_to :guest, :class_name => "User"
    belongs_to :listing
    has_one :review
end