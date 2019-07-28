class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url = "https://turbo-scharmy-pompy.herokuapp.com/users/sign_in"
    mail(to: @user.email, subject: 'Welcome to My Awesome Turbo Site')
  end
end
