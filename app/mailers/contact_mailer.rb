class ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact
    mail from: @contact.email, to: @contact.to,
         subject: "Website contact from #{@contact.name}"
  end
end
