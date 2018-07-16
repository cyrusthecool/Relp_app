# == Schema Information
#
# Table name: nationalities
#
#  id            :bigint(8)        not null, primary key
#  name          :text
#  food_history  :text
#  famous_food   :text
#  flag_image    :text
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Nationality < ApplicationRecord
  has_many :restaurants
has_many :dishes, :through => :restaurants
end
