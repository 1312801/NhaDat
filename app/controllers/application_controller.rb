class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def current_land
    @current_land ||= Land.find_by(id: session[:land_id])
  end
end
