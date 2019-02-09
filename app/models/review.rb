class Review < ActiveRecord::Base
    belongs_to :reservation
    belongs_to :guest, :class_name => "User"

end


# has a description (FAILED - 4)
#  has a rating (FAILED - 5)
