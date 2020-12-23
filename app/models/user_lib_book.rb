class UserLibBook < ApplicationRecord
    belongs_to :user
    belongs_to :book

    validates :user_id, uniqueness: {scope: :book_id}

    def self.all_books
        all.map { |ulb| [ulb.book, ulb.user, ulb.id]}
    end
end
