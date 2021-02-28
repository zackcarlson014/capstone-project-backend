class Api::V1::FriendsController < ApplicationController

    def create
        friend_request = Friend.find_or_create_by(friend_params)
        render json: friend_request
    end

    def update
        friend = Friend.find(params[:id])
        friend.update!(friend_params)
        render json: friend
    end

    def destroy
        friend = Friend.find(params[:id])
        friend.destroy
        render json: friend
    end

    private

    def friend_params
        params.require(:friend).permit(:inviter_id, :invitee_id, :pending)
    end
end
