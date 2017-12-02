module SessionsHelper
	#method dang nhap user
	def log_in(user)
    session[:user_id] = user.id
  end
  #method kiem tra user hien tai
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  #method kiem tra co dang nhap chua
  def logged_in?
    !current_user.nil?
  end
  #method dang xuat tai khoan
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
