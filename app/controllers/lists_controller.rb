class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists
    end


    def show
        list = List.find(params[:id])

        if list
            render json: list
        else
            render json: {error: "Cannot find this list"}
        end
    end


end
