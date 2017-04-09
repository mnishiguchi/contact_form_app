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

require 'test_helper'

class LeadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
