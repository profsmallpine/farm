class OrderMailer < ApplicationMailer
  def order_email(order)
    @order = order
    mail from: @order.email, to: ENV['ORDER_CONTACT_EMAIL'],
         subject: "Website order from #{@order.name}"
  end
end
