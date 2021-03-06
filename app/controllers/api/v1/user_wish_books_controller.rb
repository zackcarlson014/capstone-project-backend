class Api::V1::UserWishBooksController < ApplicationController

    def index
        user_wish_books = UserWishBook.all
        books = UserWishBook.all_books
        render json: {user_wish_books: user_wish_books, books: books}
    end

    def show
        user_wish_book = UserWishBook.find(user_wish_book_params)
        render json: user_wish_book
    end

    def create
        user_wish_book = UserWishBook.find_or_create_by(user_wish_book_params)
        render json: user_wish_book
    end

    def destroy
        user_wish_book = UserWishBook.find(params[:id])
        user_wish_book.destroy
        render json: user_wish_book
    end
    
    private

    def user_wish_book_params
        params.require(:user_wish_book).permit(:id, :book_id, :user_id)
    end
end

