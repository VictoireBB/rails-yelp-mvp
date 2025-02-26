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

Restaurant.create(name: "Surpriz", address: "1 rue du foie", category: "french", phone_number: "00")
puts "Surpriz"
Restaurant.create(name: "Loca", address: "6 rue du foie", category: "italian", phone_number: "00" )
puts "Loca"
Restaurant.create(name: "Au roi", address: "16 rue du temps", category: "belgian", phone_number: "00" )
puts "Au roi"
Restaurant.create(name: "Nori", address: "19 rue du paradis",  category: "japanese", phone_number: "00" )
puts "Nori"
Restaurant.create(name: "Bascou", address: "19 rue du lièvre",  category: "french", phone_number: "00" )
puts "Nori"

puts "Finished! Created #{Restaurant.count} restaurants."
