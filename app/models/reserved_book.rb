class ReservedBook < ApplicationRecord
    belongs_to :user
    belongs_to :user_lib_book

    has_many :reserved_messages
    
    def self.all_reserved_books
        all.map { |book| {id: book.id, user_id: book.user_id, user_lib_book_id: book.user_lib_book_id, delivered: book.delivered}}
    end
end
