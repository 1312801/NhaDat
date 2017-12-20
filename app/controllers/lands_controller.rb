class LandsController < ApplicationController
  def index
    @lands=Land.all
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
@land=current_user.lands.build(land_params)
if @land.save
  session[:land_id]=@land.id
  flash[:success]="Ban dang ki thanh cong"
  redirect_to lands_path
else
  flash[:error]="Dang ki lai !!"
  render 'new'
end
  end

  def destroy
    Land.find(params[:id]).destroy
    flash[:success]= "Bai viet da duoc xoa"
    redirect_to lands_path
  end
  private
  def land_params
    params.require(:land).permit(:TenDuAn, :TenChuDauTu, :Phuong, :Quan, :ThanhPho , :Tinh, :Dientich,:DiaChi,:SoPhongNgu,:SoTang)

  end
end
