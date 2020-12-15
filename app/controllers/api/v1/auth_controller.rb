class Api::V1::AuthController < ApplicationController

    def create
      user = User.find_by(username: params[:username]) 
  
      if user && user.authenticate(params[:password])
          render json: {user: {id: user.id, username: user.username}, library_books: user.library_books}
      else
        render json: { error: 'Invalid username/password.' }, status: 401
      end
    end
  end