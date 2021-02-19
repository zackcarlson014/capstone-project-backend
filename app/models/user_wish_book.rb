class UserWishBook < ApplicationRecord
    belongs_to :book
    belongs_to :user

    validates :user_id, uniqueness: {scope: :book_id}

    def self.all_books
        all.map { |uwb| [
            {
                id: uwb.book.id, 
                title: uwb.book.title, 
                image: uwb.book.image, 
                author: uwb.book.author, 
                description: uwb.book.description,
                averageRating: uwb.book.average_rating, 
                ratingCount: uwb.book.ratings_count, 
                previewLink: uwb.book.preview_link,
                googleID: uwb.book.google_id
            }, 
            {
                id: uwb.user.id, 
                username: uwb.user.username, 
                bio: uwb.user.bio, 
                prof_pic_url: uwb.user.prof_pic_url
            }, 
            uwb.id
        ]}
    end
end
