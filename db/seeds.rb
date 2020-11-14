# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding of exercises"

Exercise.create!(name: "Benchpress", category: "Chest")
Exercise.create!(name: "Legpress", category: "Legs")
Exercise.create!(name: "Pullups", category: "Back")
Exercise.create!(name: "Bizepscurls", category: "Arms")
Exercise.create!(name: "Deadlifts", category: "Core")
Exercise.create!(name: "Butterfly", category: "Chest")
Exercise.create!(name: "Squats", category: "Legs")
Exercise.create!(name: "Row with DB", category: "Back")
Exercise.create!(name: "Trizeps-Pulldown", category: "Arms")
Exercise.create!(name: "Situps", category: "Core")

puts "exercises injected"
puts "inserting test Users"

User.create!(name: "Adolf")
User.create!(name: "Elvira")

puts "users injected"


