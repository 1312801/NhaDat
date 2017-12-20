class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def current_cart
  Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
  cart=Cart.create
  session[:cart_id]=cart.id
  cart
end
  def current_land
    @current_land ||= Land.find_by(id: session[:land_id])
  end
end
