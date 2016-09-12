class OrderMailer < ApplicationMailer
  def order_email(order)
    @order = order
    mail to: ENV['ORDER_CONTACT_EMAIL'],
         subject: "Website order from #{@order.name}"
  end
end
