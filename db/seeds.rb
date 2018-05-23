# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  resto = Restaurant.create(
    name: Faker::StarWars.planet,
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip}, #{Faker::Address.city}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
    )
  5.times do
    Review.create(
      content: Faker::StarWars.quote,
      rating: rand(0..5),
      restaurant_id: resto.id
      )
  end
end
