# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kennel = Shelter.create(kind: "Kennel" )
cattery = Shelter.create(kind: "Cattery")
cage = Shelter.create(kind: "Cage")
tank = Shelter.create(kind: "tank")
stable = Shelter.create(kind: "Stable")


Animal.create(shelter_id: tank.id, kind: "Goldfish", availability: "yes", age: 1, name: "Goldielocks", info: "Very active and healthy little fish!")
Animal.create(shelter_id: kennel.id, kind: "Dog", availability: "yes", age: 5, name: "Fluffy", info: "Wishes he was a fish!")