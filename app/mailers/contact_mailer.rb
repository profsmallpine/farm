class ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact
    mail from: 'joe.timmer89@gmail.com', to: 'profsmallpine@gmail.com',
         subject: "Website contact from #{@contact.name}"
  end
end
