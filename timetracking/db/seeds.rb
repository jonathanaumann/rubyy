,# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating projects"




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



TimeEntry.create(project_id: projectA.id, hours: 2, minutes: 2, comments: "first", datetime: Time.now)
TimeEntry.create(project_id: projectB.id, hours: 3, comments: "second", datetime: Time.now)
TimeEntry.create(project_id: projectC.id, hours: 4, comments: "third", datetime: Time.now)
TimeEntry.create(project_id: projectD.id, hours: 5, comments: "lit", datetime: Time.now)
TimeEntry.create(project_id: projectE.id, hours: 6, comments: "mit", datetime: Time.now)
TimeEntry.create(project_id: projectF.id, hours: 1, comments: "USc", datetime: Time.now)
TimeEntry.create(project_id: projectG.id, hours: 1, minutes: 30, comments: "ugly af", datetime: Time.now)
TimeEntry.create(project_id: projectH.id, hours: 5, comments: "pre", datetime: Time.now)
TimeEntry.create(project_id: projectI.id, hours: 10, comments: "firsft", datetime: Time.now)


puts "done"