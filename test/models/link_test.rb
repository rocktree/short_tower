# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  url           :string(255)
#  shortened_url :string(255)
#  visit_count   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
