class ProductsController < ApplicationController
    def new
        @product = Product.new
    end
    def create
        @product = Product.new
   if @product.save
    redirect_to products_path
   else
     render :new
   end
    end
   def index
    @products = Product.all
    end
   def import
  Product.import(params[:file])
  redirect_to root_url, notice: "Products imported."
    end
end
