class UserLibBook < ApplicationRecord
    belongs_to :user
    belongs_to :book

    has_one :reserved_book

    has_many :lib_book_history_items

    validates :user_id, uniqueness: {scope: :book_id}

    def history_items
        items = self.lib_book_history_items.map { |h| [h.user_id, h.created_at]}
        return items.sort { |a, b| a[1] <=> b[1]}
    end

    def reserved_show
        return {
            id: self.id, 
            user: {
                id: self.user.id, 
                username: self.user.username, 
                prof_pic_url: self.user.prof_pic_url
            }, 
            history: self.history_items
        }
    end

    def updated_view
        return [
            {
                id: self.book.id, 
                title: self.book.title, 
                image: self.book.image, 
                author: self.book.author, 
                description: self.book.description, 
                averageRating: self.book.average_rating, 
                ratingCount: self.book.ratings_count, 
                previewLink: self.book.preview_link,
                googleID: self.book.google_id
            }, 
            {
                id: self.user.id, 
                username: self.user.username, 
                bio: self.user.bio, 
                prof_pic_url: self.user.prof_pic_url
            }, 
            self.id, 
            self.original_user_id
        ]
    end

    def self.all_books
        all.map { |ulb| [
            {
                id: ulb.book.id, 
                title: ulb.book.title, 
                image: ulb.book.image, 
                author: ulb.book.author, 
                description: ulb.book.description, 
                averageRating: ulb.book.average_rating, 
                ratingCount: ulb.book.ratings_count, 
                previewLink: ulb.book.preview_link,
                googleID: ulb.book.google_id
            }, 
            {
                id: ulb.user.id, 
                username: ulb.user.username, 
                bio: ulb.user.bio, 
                prof_pic_url: ulb.user.prof_pic_url
            }, 
            ulb.id, 
            ulb.original_user_id
        ]}
    end
end
