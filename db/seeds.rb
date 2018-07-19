# This dile should contain all the record creation needed to seed the database with its dedault values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord od the Rings' }])
#   Character.create(name: 'Luke', movie: movies.dirst)

User.destroy_all
u1 = User.create :email => 'mikea@ga.co', :password => 'chicken', :admin => 1
u2 = User.create :email => 'kyleb@ga.co', :password => 'chicken', :admin => 0
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
d1 = Dish.create :name => "Dumpling"
d2 = Dish.create :name => "Laksa"
d3 = Dish.create :name => "Garlic Prawn"
d4 = Dish.create :name => "Ginger Swordfish"
d5 = Dish.create :name => "Calamares a la Romana"
d6 = Dish.create :name => "Tortilla"
#
#
# ## Associations ################################################################
# foodss and restaurants
d1.restaurants << r1
d2.restaurants << r2
d3.restaurants << r3
d4.restaurants << r4

# nationalities and restaurants
n1.restaurants << r1
n2.restaurants << r2
n3.restaurants << r3
n4.restaurants << r4

c1.dishes << d1

# categories and restaurants
# r1.categories << c1 << c2
# r2.categories << c3
# r3.categories << c4 << c5
