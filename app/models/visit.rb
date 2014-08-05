# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  link_id    :integer
#  ip         :string(255)
#  user_agent :text
#  created_at :datetime
#  updated_at :datetime
#

class Visit < ActiveRecord::Base

  # ------------------------------------------ Associations

  belongs_to :link

  # ------------------------------------------ Callbacks

  after_save :cache_visit_count

  def cache_visit_count
    l = self.link
    l.update(:visit_count => l.visits.size)
  end

end
