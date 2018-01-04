class UserMailer < ApplicationMailer
  default from: 'example@gmail.com'

  def succeed_email(user)
    @user=user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
