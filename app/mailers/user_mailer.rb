class UserMailer < ActionMailer::Base
  default :from => "greg@drakeweb.org"

  def welcome_email(user)
    @user = user
    if Rails.env.development?
      @url = "http://192.168.100.35:3000"
    else
      @url = "http://warm-winter-654.heroku.com"
    end
    mail(:to => user.email,
	 :subject => "Welcome to the Sample App")
  end
end
