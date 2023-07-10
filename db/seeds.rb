# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
power.delete_all
Hero.delete_all

Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

heros.each do |hero_data|
  hero = Hero.create(hero_data)
  hero.powers << Power.all.sample(2)
ends

puts "Seed data for heroes created successfully"

powers = [
  { name: "super strength", description: "gives the wielder super-human strengths" },
  { name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" }
]

powers.each do |power_data|
  Power.create(power_data)
end

puts "Seed data for powers created successfully"
