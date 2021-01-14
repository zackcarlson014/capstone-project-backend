class UserLibBook < ApplicationRecord
    belongs_to :user
    belongs_to :book

    has_one :reserved_book

    validates :user_id, uniqueness: {scope: :book_id}

    def self.all_books
        all.map { |ulb| [{id: ulb.book.id, title: ulb.book.title, image: ulb.book.image, author: ulb.book.author, description: ulb.book.description}, {id: ulb.user.id, username: ulb.user.username, bio: ulb.user.bio, prof_pic_url: ulb.user.prof_pic_url}, ulb.id]}
    end
end
