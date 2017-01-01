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
        if params[:search]
            @products = Product.find_by_cas(params[:search]) if Product.find_by_cas(params[:search])
            @products = Product.find_by_chem(params[:search]) if Product.find_by_chem(params[:search])
            @products = Product.find_by_sum(params[:search]) if Product.find_by_sum(params[:search])
            @products = Product.find_by_state(params[:search]) if Product.find_by_state(params[:search])
            @products = Product.find_by_use(params[:search]) if Product.find_by_use(params[:search])
            @products = Product.find_by_mol(params[:search]) if Product.find_by_mol(params[:search]) 
            @products = Product.find_by_vap(params[:search]) if Product.find_by_vap(params[:search])
            @products = Product.where("cas LIKE ?", "%#{params[:search]}%") if Product.where("cas LIKE ?", "%#{params[:search]}%").exists?
            @products = Product.where("chem LIKE ?", "%#{params[:search]}%") if Product.where("chem LIKE ?", "%#{params[:search]}%").exists? 
            @products = Product.where("sum LIKE ?", "%#{params[:search]}%") if Product.where("sum LIKE ?", "%#{params[:search]}%").exists?
            @products = Product.where("state LIKE ?", "%#{params[:search]}%") if Product.where("state LIKE ?", "%#{params[:search]}%").exists? 
            @products = Product.where("use LIKE ?", "%#{params[:search]}%") if Product.where("use LIKE ?", "%#{params[:search]}%").exists?
            @products = Product.where("mol LIKE ?", "%#{params[:search]}%") if Product.where("mol LIKE ?", "%#{params[:search]}%").exists?
            @products = Product.where("vap LIKE ?", "%#{params[:search]}%") if Product.where("vap LIKE ?", "%#{params[:search]}%").exists?
        else
        end
    end
  
end
