# Adopted from Go Rails
# https://github.com/gorails-screencasts/gorails-episode-179/blob/master/app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
  def show
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      redirect_to root_path, notice: "Your message was sent! Thanks!"
    else
      render action: :show
    end
  end

  private

    def contact_form_params
      params.require(:contact_form).permit(:name, :email, :body, :join_mailing_list)
    end
end
