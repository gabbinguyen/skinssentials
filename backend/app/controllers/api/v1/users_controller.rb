class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users 
    end

    def show
        @user = User.find(params[:id])
        render json: @user 
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user 
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save
            render json: @user 
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :skin_type)
    end
end
