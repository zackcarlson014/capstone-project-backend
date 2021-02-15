class Api::V1::MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def show
        message = Message.find(message_params)
        render json: message
    end

    def create
        message = Message.find_or_create_by(message_params)
        render json: message
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :recipient_id, :res_book, :seen, :read, :content)
    end
end

