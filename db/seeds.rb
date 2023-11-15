# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
hutong = {name: "Hutong", address: "33 St Thomas St", phone_number: "0000000000", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "1111111111", category: "italian"}
baratie = {name: "Baratie", address: "East Blue", phone_number: "1234567890", category: "french"}
ichiraku = {name: "Ichiraku", address: "Konoha", phone_number: "1357913579", category: "japanese"}
leon = {name: "Leon", address: "Camden", phone_number: "2468024680", category: "belgian"}

[hutong, pizza_east, baratie, ichiraku, leon ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
