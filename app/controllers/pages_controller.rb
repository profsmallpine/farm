class PagesController < ApplicationController
  def index
    @order = Email.new
  end

  def cheese; end

  def pork; end

  def lamb; end

  def orders
    @order = Email.new
  end

  def careers; end

  def gallery; end

  def contact; end

  def create_order
    # TODO: setup active job to send mailer
    # TODO: have mailer be "from" contact's email
    # TODO: make order form work from index page or orders page
    # TODO: create pretty layout for mailer with tucker ff logo
    # TODO: test that mailer is working with gmail account
    # TODO: add better email + phone number validation
    @order = Email.new(order_params)

    if @order.valid?
      redirect_to root_path(anchor: 'orders'), success: 'Order successfully sent'
    else
      render 'index'
    end
  end

  def create_contact
    # TODO: add route for contact mailer
    # TODO: fix email model to work with contact + order mailers
  end

  private

  def order_params
    params.require(:email).permit(:name, :phone, :email, :how_much, :body)
  end
end
