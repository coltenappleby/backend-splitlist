class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists
    end


    # def show
    #     list = List.params[:id]
    #     render json: items
    # end


end
