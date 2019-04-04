class UserMailer < ApplicationMailer
def welcome_email(user)
    @user = user
    @url  = 'localhost:3000'
    mail(to: user.email, subject: 'Welcome PLEASE COME RENT A KITTY!')
  end

end
