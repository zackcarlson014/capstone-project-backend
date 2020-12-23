class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :book
    has_many :comment_likes

    def self.all_comments
        all.map { |comment| [comment, comment.user]}
    end
end

