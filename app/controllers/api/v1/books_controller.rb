class Api::V1::BooksController < ApplicationController

    def index
        books = Book.all
        render json: books
    end

    def show
        book = Book.find(book_params)
        render json: book
    end

    def create
        book = Book.find_or_create_by(book_params)
        render json: book
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        render json: book
    end
    
    private

    def book_params
        params.require(:book).permit(:title, :author, :published_date, :image)
    end
end
