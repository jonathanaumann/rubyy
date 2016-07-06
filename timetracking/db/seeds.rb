# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating three projects"




projectA = Project.create(name: "IronHack", description: "coding boot")

projectB = Project.create(name: "papa john", description: "pizza")

projectC = Project.create(name:"Taco Bell")

projectD = Project.create(name: "Wendies", description: "fast food")

projectE = Project.create(name: "Dominos")

projectF = Project.create(name: "Sushi-Thai", description: "sushi and japanese food")

projectG = Project.create(name: "Mcdonalds", description: "First bigest fattest fastest fast food")

projectH = Project.create(name: "BurgerKing", description: "Mcdonalds compition")

projectI = Project.create(name: "Chipotle", description: "fire mexican food")

projectJ = Project.create(name: "Pei Wei", description: "wack chinese")

puts "done"