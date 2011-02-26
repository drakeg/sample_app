class UserMailer < ActionMailer::Base
  default :from => "greg@drakeweb.org"

  def welcome_email(user)
    @user = user
    @url = "http://192.168.100.35:3000"
    mail(:to => user.email,
	 :subject => "Welcome to the Sample App")
  end
end
