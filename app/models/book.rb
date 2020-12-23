class Book < ApplicationRecord

    has_many :user_lib_books
    has_many :donors, source: :user, through: :user_lib_books

    has_many :user_wish_books
    has_many :donatees, source: :user, through: :user_wish_books

    has_many :comments

    validates :title, uniqueness: {scope: :author}

end
