class Api::V1::UserLibBooksController < ApplicationController

    def index
        user_lib_books = UserLibBook.all
        books = UserLibBook.all_books
        render json: {user_lib_books: user_lib_books, books: books}
    end

    def show
        user_lib_book = UserLibBook.find(user_lib_book_params)
        render json: user_lib_book
    end

    def create
        user_lib_book = UserLibBook.find_or_create_by(user_lib_book_params)
        render json: user_lib_book
    end

    def destroy
        user_lib_book = UserLibBook.find(params[:id])
        user_lib_book.destroy
        render json: user_lib_book
    end
    
    private

    def user_lib_book_params
        params.require(:user_lib_book).permit(:user_id, :book_id)
    end
end

