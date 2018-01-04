class LandsController < ApplicationController
  def index
    @lands=Land.text_search(params[:query].to_s.downcase)
  end
  def new
    @land=Land.new
  end
  def show
    @land= Land.find(params[:id])
  end
  def edit
    @land= Land.find(params[:id])
  end

  def update
    @land= Land.find(params[:id])
    @land.user_id=current_user.id
    @land.tien=params[:land][:tien]
    #byebug
    if @land.save
      flash[:success]="Ban dau gia thanh cong"
      redirect_to land_path(@land)
      else
        flash[:error]= "Thu dau gia lai"
        redirect_to lands_path
    end
  end

  def create
    @land= Land.new(land_params)
        @land.user = current_user
        if @land.save
       flash[:success] = 'Land was successfully created.'
       redirect_to lands_path #=> or anything
    else
       flash[:error] = 'Land was not created successfully .'
       redirect_to lands_path #=> or anything
    end
end

  def destroy
    Land.find(params[:id]).destroy
    flash[:success]= "Bai viet da duoc xoa"
    redirect_to lands_path
  end
  def search
  @lands = Land.search(params)
end
  private
  def land_params
    params.require(:land).permit(:tenduan, :tenchudautu, :phuong, :quan, :thanhpho , :tinh, :dientich,:diachi,:sophongngu,:sotang,:datestart,:dateend)

  end
end
