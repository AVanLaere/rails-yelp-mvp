# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: 1_234_345_234, category: 'french' }
pizza_east =  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: 534_678_234, category: 'italian' }
pizza_west =  { name: 'Pizza West', address: '57A Shoreditch High St, London E1 6PQ', phone_number: 534_378_234, category: 'italian' }
pizza_hut = { name: 'Pizza Hut', address: '58A Shoreditch High St, London E1 6PQ', phone_number: 534_668_234, category: 'italian' }
east = { name: 'East', address: '59A Shoreditch High St, London E1 6PQ', phone_number: 531_678_234, category: 'japanese' }

[dishoom, pizza_east, pizza_west, pizza_hut, east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
