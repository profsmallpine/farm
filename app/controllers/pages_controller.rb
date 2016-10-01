class PagesController < ApplicationController
  def index; end

  def gallery; end

  def contact
    @contact = Email.new
  end

  def create_contact_email
    @contact = Email.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to contact_path, success: 'Message successfully sent.'
    else
      flash.now[:error] = @contact.errors.full_messages.to_sentence
      render 'contact'
    end
  end

  private

  def contact_params
    params.require(:email).permit(:name, :phone, :email, :body, :to)
  end
end
