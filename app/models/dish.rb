# == Schema Information
#
# Table name: dishes
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  image       :text
#  category_id :integer
#  created_at  :datetime         not null

class Dish < ApplicationRecord
  belongs_to :category, :optional => true
  has_and_belongs_to_many :restaurants # habtm
  has_many :nationalities, :through => :restaurants
  # users?
end
