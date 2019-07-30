# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all
User.destroy_all
#Restaurant.reset_pk_sequence



10.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, rating: rand(1..10))
end
10.times do
  User.create(name: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone )
end





# Restaurant.create(name: "Merritt Hall", address: "1410  Cinnamon Lane", rating: 2 )
# Restaurant.create(name: "Redmond's", address: "3286  Elk Rd Little", rating: 5 )
# Restaurant.create(name: "Pine Bush Hs Refr Stand
# ", address: "", rating: )
# Restaurant.create(name: "City Lobster
# ", address: "", rating: )
# Restaurant.create(name: "Mangos Coastal Cuisine
# ", address: "", rating: )
# Restaurant.create(name: "Royal Bay Restaurant
# ", address: "", rating: )
# Restaurant.create(name: "Village Tavern Restaurant
# ", address: "", rating: )
# Restaurant.create(name: "Pizza A' Fetta
# ", address: "", rating: )
# Restaurant.create(name: "China Yuan Restaurant
# ", address: "", rating: )
# Restaurant.create(name: "El Azteca Mexican Taco Shops
# ", address: "", rating: )
# Restaurant.create(name: "Garden Cafe
# ", address: "", rating: )
