class UserWishBook < ApplicationRecord
    belongs_to :donatee, :class_name => :User
    belongs_to :wish_list, :class_name => :Book
end
