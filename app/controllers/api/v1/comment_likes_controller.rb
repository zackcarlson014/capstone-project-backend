class Api::V1::CommentLikesController < ApplicationController
    
    def create
        comment_like = CommentLike.find_or_create_by(comment_likes_params)
        render json: comment_like
    end

    def destroy
        comment_like = CommentLike.find(params[:id])
        comment_like.destroy
        render json: comment_like
    end

    private

    def comment_likes_params
        params.require(:comment_like).permit(:user_id, :comment_id)
    end

end
