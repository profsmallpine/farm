class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail from: ENV['GMAIL_USERNAME'], to: 'profsmallpine@gmail.com',
         subject: "Website contact from #{@contact.name}"
  end
end
