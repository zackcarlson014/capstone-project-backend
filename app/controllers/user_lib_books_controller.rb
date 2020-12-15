class UserLibBooksController < ApplicationController
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
        params.require(:user_lib_book).permit(:library_book_id, :donor_id)
    end
end

