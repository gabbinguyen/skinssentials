class Api::V1::ProductsController < ApplicationController
    def index
        @products = Product.all 
        render json: @products 
    end

    def show
        @product = Product.find(params[:id])
        render json: @product
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            render json: @product 
        end
    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        if @product.save
            render json: @product
        end
    end

    private

    def product_params
        params.require(:product).permit(:brand, :name, :skin_type, :step, :img_url)
    end

end
