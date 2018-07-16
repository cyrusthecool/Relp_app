# == Schema Information
#
# Table name: restaurants
#
#  id             :bigint(8)        not null, primary key
#  name           :text
#  image          :text
#  nationality_id :integer
#  website        :text
#  address        :text
#  phone          :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Restaurant < ApplicationRecord
  belongs_to :nationality, :optional => true
  has_and_belongs_to_many :dishes # habtm
  has_many :categories, :through => :dishes
  # users?
end
