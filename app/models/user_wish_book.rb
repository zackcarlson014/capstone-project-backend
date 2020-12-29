class UserWishBook < ApplicationRecord
    belongs_to :book
    belongs_to :user

    validates :user_id, uniqueness: {scope: :book_id}

    def self.all_books
        all.map { |uwb| [uwb.book, {id: uwb.user.id, username: uwb.user.username, bio: uwb.user.bio, prof_pic_url: uwb.user.prof_pic_url}, uwb.id]}
    end
end
