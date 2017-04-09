class Products::AppointmentsController < ApplicationController
  before_action :set_product

  def show
    @appointment_form = Products::AppointmentForm.new(product_id: params[:id])
  end

  def create
    @appointment_form = Products::AppointmentForm.new(appointment_form_params)
    if @appointment_form.submit
      redirect_to root_path, notice: "Your appointment request was sent! Thanks!"
    else
      render action: :show
    end
  end

  private

    def appointment_form_params
      params.require(:products_appointment_form).permit(:name, :email, :body, :product_id, :join_mailing_list)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
