class SignupMailer < ApplicationMailer
  default from: "carolynoliveira515@gmail.com"

  def signup_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Blocipedia!")
  end
end
