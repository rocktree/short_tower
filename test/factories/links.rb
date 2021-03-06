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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    url "MyString"
    shortened_url "MyString"
  end
end
