class Api::V1::UsersController < ApplicationController

    wrap_parameters :user, include: [:username, :password, :bio, :prof_pic_url]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(user_params)
    end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :password, :bio, :prof_pic_url)
    end
end
