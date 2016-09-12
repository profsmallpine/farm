class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail to: @contact.to, subject: "Website contact from #{@contact.name}"
  end
end
