class ProductsController < ApplicationController

  def index
    @products = Product.with_stock
  end

  def show
    @product = Product.where(id: params[:id]).first
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.where(id: params[:id]).first
  end

  def update
    @product = Product.where(id: params[:id]).first
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.where(id: params[:id]).first
    @product.destroy
    redirect_to products_path
  end

private
  
  def product_params
    params.require(:product).permit(:name, :stock, :price, :description, :image)
  end
end
