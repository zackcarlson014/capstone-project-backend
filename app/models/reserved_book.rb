class ReservedBook < ApplicationRecord
    belongs_to :user
    belongs_to :user_lib_book

    has_many :reserved_messages

    def reserved_show
        lib_book = self.user_lib_book
        lib_book_show = lib_book.reserved_show
        book = Book.find(lib_book.book_id)
        return {
            book: {
                id: book.id, 
                title: book.title, 
                author: book.author, 
                image: book.image
            }, 
            user: {
                id: self.user.id, 
                username: self.user.username, 
                prof_pic_url: self.user.prof_pic_url
            }, 
            user_lib_book: lib_book_show, 
            id: self.id
        }
    end
    
    def self.all_reserved_books
        all.map { |book| 
            {
                id: book.id, 
                delivered: book.delivered
            }
        }
    end
end
