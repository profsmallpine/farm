class PagesController < ApplicationController
  def index; end

  def creamery; end

  def animals; end

  def orders
    @order = Email.new
  end

  def careers; end

  def gallery; end

  def contact
    @contact = Email.new
  end

  def create_order
    # TODO: setup active job to send mailer
    # TODO: have mailer be "from" contact's email
    # TODO: create pretty layout for mailer with tucker ff logo
    # TODO: test that mailer is working with gmail account
    @order = Email.new(order_params)

    if @order.valid?
      redirect_to orders_path, success: 'Order successfully sent.'
    else
      render 'orders'
    end
  end

  def create_contact
    # TODO: setup active job to send mailer
    # TODO: have mailer be "from" contact's email
    # TODO: create pretty layout for mailer with tucker ff logo
    # TODO: test that mailer is working with gmail account
    @contact = Email.new(order_params)

    if @contact.valid?
      ContactMailer.contact_email.deliver_now
      redirect_to contact_path, success: 'Message successfully sent.'
    else
      flash.now[:error] = @contact.errors.full_messages.to_sentence
      render 'contact'
    end
  end

  private

  def order_params
    params.require(:email).permit(:name, :phone, :email, :how_much, :body)
  end
end
