# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  title         :string(255)
#  url           :string(255)
#  shortened_url :string(255)
#  visit_count   :integer          default(0)
#  created_at    :datetime
#  updated_at    :datetime
#

class Link < ActiveRecord::Base

  # ------------------------------------------ Associations

  belongs_to :user
  has_many :visits

  # ------------------------------------------ Validations

  validates :url, :shortened_url, :presence => true

  # ------------------------------------------ Callbacks

  before_create :set_title

  def set_title
    self.title = url
  end

  # ------------------------------------------ Instance Methods

  def to_param
    shortened_url
  end

end
