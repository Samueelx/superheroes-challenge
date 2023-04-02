# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Heroes
Hero.create!(name: 'Dick Grayson', super_name: 'Nightwing')
Hero.create!(name: 'Conor Kent', super_name: 'Super Boy')
Hero.create!(name: 'Kaldur', super_name: 'Aqualad')
Hero.create!(name: 'Megan', super_name: 'Miss Martian')
Hero.create!(name: 'Tim Drake', super_name: 'Robin')
Hero.create!(name: 'Diana', super_name: 'Wonder Woman')
Hero.create!(name: 'Bruce Wayne', super_name: 'Batman')

#Powers
Power.create!(name: 'super strength', description: "gives the wielder super-human strengths")
Power.create!(name: 'Flight', description: "gives the wielder the ability to fly through the skies at supersonic speed")
Power.create!(name: "super speed", description: "gives the wielder the ability to run at near light speed")
Power.create!(name: "Shape SHifting", description: "gives the wielder the ability change their physical form at will")
Power.create!(name: "intellect", description: "the wielder of this ability is extremely smart")
Power.create!(name: "fighting skills", description: "the wielder of this skill is more of a martial arts master")
Power.create!(name: "Magician", description: "the wielder of this ability pocesses magic")

#HeroPowers
# HeroPower.create!(strength: 0, hero_id: 2, power_id: 1)
# HeroPower.create!(strength: 1, hero_id: 1, power_id: 5)
# HeroPower.create!(strength: 1, hero_id: 1, power_id: 6)
# HeroPower.create!(strength: 0, hero_id: 6, power_id: 1)
# HeroPower.create!(strength: 0, hero_id: 3, power_id: 7)
# HeroPower.create!(strength: 1, hero_id: 5, power_id: 5)
# HeroPower.create!(strength: 1, hero_id: 5, power_id: 6)
# HeroPower.create!(strength: 2, hero_id: 4, power_id: 4)