class UserMailer < ApplicationMailer

  default from: 'from@example.com'

def welcome_email(user)
  # your code here
  @user = user
  @url = 'http://99cats.logon'
  mail(to: user.username, subject: 'Welcome to CAT WEBSITE PLEASE SPEND LOTS OF MONEY HERE')
end




end
