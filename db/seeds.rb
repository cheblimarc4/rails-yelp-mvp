# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
local = {name: "Local", address: "7 Boundary St", phone_number: "343343" , category: "japanese"}
acai=  {name: "Acai", address: "Gemmayze street", phone_number: "343282" , category: "belgian"}
burgerking=  {name: "BurgerKing", address: "Rossio street", phone_number: "789879" , category: "french"}
macdo=  {name: "Macdo", address: "Alvalade", phone_number: "9876" , category: "italian"}
pizzahut=  {name: "Pizzahut", address: "Yarzeh countrey club", phone_number: "98746", category: "italian"}



[local, acai, burgerking, macdo, pizzahut].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
