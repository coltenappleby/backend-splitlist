class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(params[:id])
        if item 
            render json: item
        else
            render json: {error: "Cannot find this post"}
        end
    end

    def create
        item = Item.create(item_params)
        if item.valid?
            render json: item
        else
            render json: item.errors.full_messages
        end
    end


    private

        def item_params
            params.permit(:name, :notes, :user_id, :list_id, :location, :completed)
        end
end

