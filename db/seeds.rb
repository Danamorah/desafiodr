# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.destroy_all
Tag.destroy_all
AdminUser.create!(email: 'hein.rodrigo@gmail.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'damoraherrera@gmail.com', password: 'password', password_confirmation: 'password')

tags = Tag.create([{name:'Musician'}, {name: 'Athlete'}, {name:'Fictional'}, {name:'Artist'},
  {name:'Historic'}, {name:'Writer'}])

#incorrects = []
#incorrects << Incorrect.create([{word: 'dont', level: 1}, {word: 'luv', level: 1}])

