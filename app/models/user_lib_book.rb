class UserLibBook < ApplicationRecord
    belongs_to :donor, :class_name => :User
    belongs_to :library, :class_name => :Book
end
