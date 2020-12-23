class Api::V1::CommentsController < ApplicationController

    def index

        all_comments = Comment.all_comments
        render json: all_comments
    end

    def show
        comment = Comment.find(comment_params)
        render json: comment
    end

    def create
        comment = Comment.find_or_create_by(comment_params)
        render json: comment
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :book_id, :content)
    end

end
