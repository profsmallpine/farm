class OrderMailer < ApplicationMailer
  def order_email(order)
    @order = order
    mail to: 'tyler@tuckerfamilyfarm.com',
         subject: "Website order from #{@order.name}"
  end
end
