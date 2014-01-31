class CartsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @cart = current_order
  end

  def update
    @cart = current_order
    if @cart.update_attributes(cart_params)
      redirect_to cart_path
    end
  end

private

  def cart_params
    params.require(:order).permit(items_attributes: [:id, :quantity, :_destroy])
  end
end