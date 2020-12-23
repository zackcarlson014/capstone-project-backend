class UserWishBook < ApplicationRecord
    belongs_to :book
    belongs_to :user

    validates :user_id, uniqueness: {scope: :book_id}

    def self.all_books
        all.map { |uwb| [uwb.book, uwb.user, uwb.id]}
    end
end
