# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  detsil     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :dishes
has_many :restaurants, :through => :dishes
end
