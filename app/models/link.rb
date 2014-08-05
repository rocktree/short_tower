# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  url           :string(255)
#  shortened_url :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Link < ActiveRecord::Base

  validates :url, :shortened_url, :presence => true

end
