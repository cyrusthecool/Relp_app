# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'mikea@ga.co', :password => 'chicken'
u2 = User.create :email => 'kyleb@ga.co', :password => 'chicken'
#
Restaurant.destroy_all
r1 = Restaurant.create :name => "China Doll"
r2 = Restaurant.create :name => "Apollo"
r3 = Restaurant.create :name => "Sushi Train"
r4 = Restaurant.create :name => "Cruise"

Nationality.destroy_all
n1 = Nationality.create :name => "Greek"
n2 = Nationality.create :name => "Chinese"
n3 = Nationality.create :name => "Japanese"
n4 = Nationality.create :name => "French"
n5 = Nationality.create :name => "Thai"
#
Category.destroy_all
c1 = Category.create :name => 'Vegeterian'
c2 = Category.create :name => 'Seafood'
c3 = Category.create :name => 'Pizza'
c4 = Category.create :name => 'Grill'
c5 = Category.create :name => 'Tapas'

Dish.destroy_all
f1 = Dish.create :name => "Dumpling"
f2 = Dish.create :name => "Laksa"
f3 = Dish.create :name => "Garlic Prawn"
f4 = Dish.create :name => "Ginger Swordfish"
f5 = Dish.create :name => "Calamares a la Romana"
f6 = Dish.create :name => "Tortilla"
#
#
# ## Associations ################################################################
# # foodss and restaurants
# f1.restaurants << r1
# f2.restaurants << r2
# f3.restaurants << r3
# f4.restaurants << r4
#
# # nationalities and restaurants
# n1.restaurants << r1
# n2.restaurants << r2
# n3.restaurants << r3
# n4.restaurants << r4
#
# # categories and restaurants
# r1.categories << c1 << c2
# r2.categories << c3
# r3.categories << c4 << c5
