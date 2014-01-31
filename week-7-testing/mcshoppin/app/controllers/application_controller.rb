class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def current_order
    current_user.orders.where(status: 'cart').first_or_create
  end

  helper_method :current_order
end
