class ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact
    mail to: 'profsmallpine@gmail.com', subject: "Website contact from #{@contact.name}"
  end
end
