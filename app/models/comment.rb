class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :book
    has_many :comment_likes

    def self.all_comments
        all.map { |comment| [{id: comment.id, book_id: comment.book_id, content: comment.content, created_at: comment.created_at}, {id: comment.user.id, username: comment.user.username, prof_pic_url: comment.user.prof_pic_url}, comment.comment_likes.length]}
    end
end

