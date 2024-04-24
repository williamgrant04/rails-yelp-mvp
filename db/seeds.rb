# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Clearing"

Restaurant.destroy_all

puts "Seeding"
10.times do
  rest = Restaurant.create(name: "Rest", address: "123 main street", phone_number: "1234567890", category: "japanese")
  5.times do
    review = Review.new(content: "Bad", rating: 1)
    review.restaurant = rest
    review.save
  end
end

puts "Done"
