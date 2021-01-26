class Api::V1::BooksController < ApplicationController

    def index
        books = Book.all
        render json: books
    end

    def show
        book = Book.find(params[:id])
        comments = Comment.all_comments
        render json: {
            book: {
                id: book.id, 
                title: book.title, 
                author: book.author, 
                image: book.image, 
                description: book.description, 
                averageRating: book.average_rating, 
                ratingCount: book.rating_count, 
                previewLink: book.previewLink
            }, 
            comments: comments
        }
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
        params.require(:book).permit(:title, :author, :published_date, :image, :description, :average_rating, :ratings_count, :preview_link)
    end
end
