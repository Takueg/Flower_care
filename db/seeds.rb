# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# we need to create 5 offers
# with a title, image_url,address, description, instructions, date and price

# 1 create users
# 2 create offers

puts "Cleaning database..."
Offer.destroy_all

puts "creating offers"


images = []

images.each do |image|
  5.times do
    Offer.new(
      image_url: image,
      description: Faker::Lorem.paragraph,
      )
  end
end
