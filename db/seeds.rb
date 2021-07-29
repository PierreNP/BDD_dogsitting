# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
    city = City.create!(name: Faker::Address.city)
  end

100.times do
    dog = Dog.create!(name: Faker::Name.name, city_id: rand(1..20))
  end

100.times do
    dogsitter = Dogsitter.create!(name: Faker::Name.name, city_id: rand(1..20))
  end

100.times do
    stroll = Stroll.create!(city_id: rand(1..20), dogsitter_id: rand(1..100))
  end

10.times do
    join_stroll_with_dogs = JoinStrollWithDog.create!(dog_id: rand(1..10), stroll_id: rand(1..10))
  end