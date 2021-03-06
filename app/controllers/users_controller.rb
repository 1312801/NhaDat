class UsersController < ApplicationController

  def index
    @users= User.all
  end

  def new
    @user= User.new
  end

  def show
    @user= User.find(params[:id])
  end
  def edit
    @user= User.find(params[:id])
  end
  def create
    @user = User.new(user_params)
    #byebug
    if @user.save
      log_in @user
      flash[:success]="Welcome to our website"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :address, :number, :password , :password_confirmation, :country)

  end
end
