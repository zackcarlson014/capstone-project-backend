class Api::V1::ReservedMessagesController < ApplicationController

    def index
        reserved_messages = ReservedMessage.all_messages
        render json: reserved_messages
    end

    def show
        reserved_message = ReservedMessage.find(reserved_message_params)
        render json: reserved_message
    end

    def create
        reserved_message = ReservedMessage.find_or_create_by(reserved_message_params)
        render json: reserved_message
    end

    def destroy
        reserved_message = ReservedMessage.find(params[:id])
        reserved_message.destroy
        render json: reserved_message
    end

    private

    def reserved_message_params
        params.require(:reserved_message).permit(:user_id, :reserved_book_id, :content)
    end

end
