class UsersController < ApplicationController

    def show
        user = User.find(params[:id])

        if user
            render json: user
        else
            render json: {error: "Cannot find this user"}
        end

    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: user.errors.full_messages            
        end
    end


    private

    def user_params
        params.permit(:name, :email, :phone_number)
    end
end
