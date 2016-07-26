class ContactMailer < ActionMailer::Base
  def contact_email
    mail to: 'test@example.com', subject: 'This is a test'
  end
end
