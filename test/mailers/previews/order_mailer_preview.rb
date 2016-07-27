class OrderMailerPreview < ActionMailer::Preview
  def order_email
    order = Email.new(email: 'text@example.com', name: 'Joe Test',
                      body: 'What kind of meat do you have?',
                      how_much: '19 lbs', phone: '4065553209')
    OrderMailer.order_email(order)
  end
end
