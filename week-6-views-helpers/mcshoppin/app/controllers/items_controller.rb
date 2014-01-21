class ItemsController < ApplicationController
  def create
    @product = Product.where(id: params[:product_id]).first
    @item = current_order.items.create
  end
end