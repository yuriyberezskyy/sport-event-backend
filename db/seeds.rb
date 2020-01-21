# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all


yuriy = User.create(name: "Yuriy", email: "bereza@gmail.com" , password: "123",pic: "www.w2e.com")
alex = User.create(name: "Alex", email: "alex@gmail.com" , password: "123",pic: "www.w2e.com")


basketball = Event.create(title: "Let's play basketball", location: "101 Prospect Park Str", date: "22/01/2020", headcount: 10, user: yuriy)
soccer = Event.create(title: "Let's play soccer", location: "100 Park Str", date: "11/08/2020", headcount: 10, user: alex)


yuriyParticipate = Participation.create(haveParticipated:true ,user: yuriy, event: soccer)