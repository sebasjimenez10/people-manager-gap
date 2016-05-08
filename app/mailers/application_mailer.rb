class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@peopleapp.com"
  layout 'mailer'
end
