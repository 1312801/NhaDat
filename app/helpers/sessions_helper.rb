module SessionsHelper
	#method dang nhap user
	def log_in(user)
    session[:user_id] = user.id
  end
  #method kiem tra user hien tai
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
	def current_land
    @current_land ||= Land.find_by(id: session[:land_id])
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
	def title(page_title, show_title = true)
    @content_for_title = page_title.to_s
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args.map(&:to_s)) }
  end

  def javascript(*args)
    args = args.map { |arg| arg == :defaults ? arg : arg.to_s }
    content_for(:head) { javascript_include_tag(*args) }
  end
end
