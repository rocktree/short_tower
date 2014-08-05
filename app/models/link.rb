# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  url           :string(255)
#  shortened_url :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Link < ActiveRecord::Base

  # ------------------------------------------ Associations

  belongs_to :user
  has_many :visits

  # ------------------------------------------ Validations

  validates :url, :shortened_url, :presence => true

  # ------------------------------------------ Instance Methods

  def to_param
    shortened_url
  end

end
