class ReservedBook < ApplicationRecord
    belongs_to :user
    belongs_to :user_lib_book

    has_many :reserved_messages
    
end
