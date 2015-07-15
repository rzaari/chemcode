# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['xesz135i5429'],
  :password => ENV['app38637617@heroku.com'],
  :domain => 'heroku.com',
  :enable_startstls_auto => true
}