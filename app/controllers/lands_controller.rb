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
    if @land.update(params.require(:land).permit(:tien))
      flash[:success]="Ban dau gia thanh cong"
      render 'show'
    end
  end
  def create
@land=Land.new(land_params)
if @land.save
  flash[:success]="Ban dang ki thanh cong"
  redirect_to lands_path
else
  flash[:error]="Dang ki lai !!"
  render 'new'
end
  end
  private
  def land_params
    params.require(:user).permit(:TenDuAn, :TenChuDauTu, :Phuong, :Quan, :ThanhPho , :Tinh, :Dientich,:DiaChi,:SoPhongNgu,:SoTang)

  end
end
