class Review < ActiveRecord::Base[5.1]
    belongs_to :guest, :class_name => "User"
    belongs_to :reservation
end