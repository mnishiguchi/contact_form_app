# Adopted from Go Rails
# https://github.com/gorails-screencasts/gorails-episode-179/blob/master/app/models/contact_form.rb
class ContactForm
  include ActiveModel::Model

  attr_accessor :name, :email, :body, :join_mailing_list

  validates :name, :email, :body, presence: true

  def save
    if valid?
      # Do something on success, such as:
      # - initiating the logic to take care of the user.
      # - sending email async
      # - adding it to statistics

      Lead.first_or_create!(
        lead_type: 1,
        lead_source: 1,
        product_id: nil,
      )
      true
    else
      false
    end
  end

  def join_mailing_list
    ActiveRecord::Type::Boolean.new.cast(@join_mailing_list)
  end
end
