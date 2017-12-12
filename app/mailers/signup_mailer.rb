class SignupMailer < ApplicationMailer

    def signup_email(user)
      @user = user
      mail(to: @user.email, subject: 'Welcome to Blocipedia! It\'s wiki time!')
    end
end
