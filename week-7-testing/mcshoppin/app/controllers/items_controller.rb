class ItemsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @product = Product.where(id: params[:product_id]).first
    @item = @product.items.build(item_params)
    @item.order = current_order
    if @item.save
      redirect_to root_path
    end
  end

private

  def item_params
    params.require(:item).permit(:quantity)
  end
end