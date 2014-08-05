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

  belongs_to :link

end
