class ContactForm
  include ActiveModel::Model

  attr_accessor :name, :email, :body, :join_mailing_list

  validates :name, :email, presence: true

  def submit
    if valid?
      # Do something on success, such as:
      # - initiating the logic to take care of the user.
      # - sending email async
      # - adding it to statistics

      begin
        Lead.create!(lead_type: "general", lead_source: "website")
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
