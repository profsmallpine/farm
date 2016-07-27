class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    contact = Email.new(to: 'creamery@tuckerfamilyfarm.com',
                        email: 'text@example.com', name: 'Joe Test',
                        body: 'What kind of meat do you have?')
    ContactMailer.contact_email(contact)
  end
end
