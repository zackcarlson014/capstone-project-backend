class CommentLike < ApplicationRecord

    belongs_to :user
    belongs_to :comment 

    validates :user_id, uniqueness: {scope: :comment_id}

    def my_like
        return {
            id: self.id, 
            comment_id: self.comment_id
        }
    end

end
