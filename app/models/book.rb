class Book < ApplicationRecord

    has_many :user_lib_books, :foreign_key => 'libarary_book_id'
    has_many :users, through: :user_lib_books

    has_many :user_wish_books, :foreign_key => 'wish_list_book_id'
    has_many :users, through: :user_wish_books

end
