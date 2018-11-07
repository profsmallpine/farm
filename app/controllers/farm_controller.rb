class FarmController < ApplicationController
  def careers_download
    send_file("#{Rails.root}/public/farm_careers.pdf",
              filename: 'farm_careers.pdf',
              type: 'application/pdf')
  end

  def apply_now_download
    send_file("#{Rails.root}/public/farm_apply_now.docx",
              filename: 'farm_apply_now.docx',
              type: 'application/docx')
  end

  def careers; end

  def animals; end

  def orders
    @order = Email.new
  end

  def create_order_email
    @order = Email.new(order_params)

    if @order.valid?
      OrderMailer.order_email(@order).deliver_now
      redirect_to farm_orders_path, success: 'Order successfully sent.'
    else
      flash.now[:error] = @order.errors.full_messages.to_sentence
      render 'orders'
    end
  end

  private

  def order_params
    params.require(:email).permit(:name, :phone, :email, :how_much, :body, :to)
  end
end
