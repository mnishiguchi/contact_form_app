# == Schema Information
#
# Table name: leads
#
#  id         :integer          not null, primary key
#  type       :integer
#  source     :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lead < ApplicationRecord
  belongs_to :product
end
