class CartsController < ApplicationController
  def index
  end

  def new
    @cart=Cart.new
  end

  def show
  @cart = current_cart
  end
  def update
    @cart=Cart.find(:id)
    if @cart.save
      flash[:success]="Ban da them vao gio hang 1 mon do"
      redirect_to line_items_path
      else
        flash[:error]= "Da xay ra loi"
        redirect_to lands_path
    end
  end
private
def cart_params
  params.require(:cart).permit(:purchased_at)
end

end
