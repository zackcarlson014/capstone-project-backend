class User < ApplicationRecord

    has_many :user_lib_books, :foreign_key => 'donor_id'
    has_many :books, through: :user_lib_books

    has_many :user_wish_books, :foreign_key => 'donatee_id'
    has_many :books, through: :user_wish_books


end
