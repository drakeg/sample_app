# Load the rails application
require File.expand_path('../application', __FILE__)
config.action_mailer.delivery_method = :smtp
config.action_mailer.raise_delivery_errors = true

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address  => "smtp.drake.whsites.net",
  :port  => 25,
  :user_name  => "drakeg",
  :password  => "6tfc5rdx",
  :authentication  => :login
}
