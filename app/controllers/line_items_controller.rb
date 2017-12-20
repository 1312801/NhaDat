class LineItemsController < ApplicationController
  def create
  #  byebug
    @land = Land.find(params[:land_id])
    @line_item = LineItem.create!(:cart_id => current_cart.id, :land_id => @land.id, :quantity => 1, :unit_price => @land.tien)
    flash[:notice] = "Added #{@land.TenDuAn} to cart."

    redirect_to current_cart
  end
end
