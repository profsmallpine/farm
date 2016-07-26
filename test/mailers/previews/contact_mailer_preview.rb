class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    ContactMailer.contact_email
  end
end
