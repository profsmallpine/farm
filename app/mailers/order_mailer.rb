class OrderMailer < ApplicationMailer
  def order_email(order)
    @order = order
    mail from: @order.email, to: 'tyler@tuckerfamilyfarm.com',
         subject: "Website order from #{@order.name}"
  end
end
