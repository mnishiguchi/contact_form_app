class Products::AppointmentForm
  include ActiveModel::Model

  attr_accessor :name, :email, :body, :product_id, :join_mailing_list

  validates :name, :email, presence: true

  def initialize(attributes={})
    Rails.logger.info("product_id was missing in appointment-form")
    super
  end

  def submit
    if valid?
      # Do something on success, such as:
      # - initiating the logic to take care of the user.
      # - sending email async
      # - adding it to statistics

      begin
        Lead.create!(lead_type: "appointment", lead_source: "website", product_id: product_id)
      rescue RuntimeError => error
        Rails.logger.error("Error creating a lead: #{error}")
      end

      true
    else
      false
    end
  end

  def join_mailing_list
    ActiveRecord::Type::Boolean.new.cast(@join_mailing_list)
  end
end
