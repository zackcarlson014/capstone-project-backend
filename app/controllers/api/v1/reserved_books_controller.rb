class Api::V1::ReservedBooksController < ApplicationController

    def index
        reserved_books = ReservedBook.all 
        render json: reserved_books, except: [:created_at, :updated_at]
    end

    def show
        reserved_book = ReservedBook.find(params[:id])
        reserved_show = reserved_book.reserved_show
        reserved_messages = ReservedMessage.all_messages
        messages = reserved_messages.select { |m| m[0][:reserved_book_id] === reserved_book.id} 
        render json: {book: reserved_show, messages: messages}
    end

    def create
        reserved_book = ReservedBook.find_or_create_by(reserved_books_params)
        render json: reserved_book
    end

    def edit
        reserved_book = ReservedBook.find(params[:id])
        render json: reserved_book
    end

    def update
        reserved_book = ReservedBook.find(params[:id])
        reserved_book.update!(reserved_books_params)
        render json: reserved_book, except: [:created_at, :updated_at]
    end

    def destroy
        reserved_book = ReservedBook.find(params[:id])
        reserved_book.destroy
        render json: reserved_book
    end

    private

    def reserved_books_params
        params.require(:reserved_book).permit(:user_id, :user_lib_book_id, :delivered)
    end

end
