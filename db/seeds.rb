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
User.destroy_all

puts "creating users"

user1 = User.create(
    name: "Takudzwa Gwindingwi",
    email: "takueg@gmail.com",
    password: "123456",
    phone_number: Faker::PhoneNumber.cell_phone
  )

puts "creeated user #{user1.name}"

user2 = User.create(
    name: "Torsten Tyras",
    email: "tyras.torsten@gmail.com",
    password: "123456",
    phone_number: Faker::PhoneNumber.cell_phone
  )

puts "creeated user #{user2.name}"
puts "created #{user1} and is valid #{user1.valid?}"
puts "created #{user2} and is valid #{user2.valid?}"

puts "creating offers"

offer1 = Offer.new(
    image_url: "https://res.cloudinary.com/dvokz7e90/image/upload/v1627723263/Flower%20Care/seed_01_photo_03_jl4gey.jpg",
    address: "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
    description: Faker::Lorem.sentence,
    instruction: Faker::Lorem.sentences,
    price: "15€",
    date: Faker::Date.in_date_period,
  )

offer1.user = user2

offer1.save

puts "created #{offer1.address} and is valid #{offer1.valid?}"

