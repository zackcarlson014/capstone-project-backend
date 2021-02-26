class Api::V1::LibBookHistoryItemsController < ApplicationController
    def index
        history_items = LibBookHistoryItem.all
        render json: history_items
    end

    def show
        history_item = LibBookHistoryItem.find(history_item_params)
        render json: history_item
    end

    def create
        history_item = LibBookHistoryItem.find_or_create_by(history_item_params)
        render json: history_item
    end

    
    private

    def history_item_params
        params.require(:lib_book_history_item).permit(:user_id, :user_lib_book_id, :res_book)
    end
end
