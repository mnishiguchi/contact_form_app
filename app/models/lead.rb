# == Schema Information
#
# Table name: leads
#
#  id          :integer          not null, primary key
#  lead_type   :integer          not null
#  lead_source :integer          not null
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Lead < ApplicationRecord
  belongs_to :product, optional: true

  enum lead_type: {
    :availability => 1,
    :appointment  => 2,
  }

  enum lead_source: {
    :website => 1,
    :partner => 2,
  }
end
