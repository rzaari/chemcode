class ApplicationMailer < ActionMailer::Base
  default from: "noreply@chemcode.herokuapp.com"
  layout 'mailer'
end
