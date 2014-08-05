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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visit do
    link_id 1
    ip "MyString"
    user_agent "MyText"
  end
end
