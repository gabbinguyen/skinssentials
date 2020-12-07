class Api::V1::UserProductsController < ApplicationController
    def index
        @user_products = UserProduct.all 
        render json: @user_products 
    end

    def show
        @user_product = UserProduct.find(params[:id])
        render json: @user_product
    end

    def create
        @user_product = UserProduct.new(user_product_params)
        if @user_product.save
            render json: @user_product 
        end
    end

    def update
        @user_product = UserProduct.find(params[:id])
        @user_product.update(user_product_params)
        if @user_product.save
            render json: @user_product
        end
    end

    def destroy
        @user_product = UserProduct.find(params[:id])
        @user_product.delete
    end

    private

    def user_product_params
        params.require(:user_product).permit(:user_id, :product_id)
    end


end
