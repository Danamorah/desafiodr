# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.destroy_all
Tag.destroy_all
Quote.destroy_all
AdminUser.create!(email: 'hein.rodrigo@gmail.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'damoraherrera@gmail.com', password: 'password', password_confirmation: 'password')

tags = Tag.create([{name:'Musician'}, {name: 'Athlete'}, {name:'Fictional'}, {name:'Artist'},
  {name:'Historic'}, {name:'Writer'}])

quotes = Quote.create([
  {content:"Don't go to the grave with life unused", author: "Bobby Bowden", tag: tags[0]}, 
  {content:"it is very easy to love alone", author: "Gertrude Stein"},
  {content:"man, I love being a turtle", author: "Michelangelo"},
  {content:"I shall not die of a cold. I shall die of having lived", author: "Willa Cather"},
  {content:"the critical period of matrimony is breakfast-time", author: "A.P. Herbert"},
  {content:"the heart was made to be broken", author: "Oscar Wilde"},
  {content:"real discoveries come from chaos", author: "Chuck Palahniuk"},
  {content:"there are two sides to every question", author: "Protagoras"},
  {content:"a hangover is the wrath of grapes", author: "Unknown"},
  {content:"my home is not a place, it is people", author: "Lois McMaster Bujold"},
  {content:"we learn geology the morning after the earthquake", author: "Ralph Waldo Emerson"}, 
  {content:"a satellite has no conscience", author: "Edward R. Murrow"},
  {content:"a true woman always loves a real soldier", author: "Belle Boyd"},
  {content:"a girl should be two things: classy and fabulous", author: "Coco Chanel"},
  {content:"a man is great by deeds, not by birth", author: "Chanakya"},
  {content:"you must be the change you wish to see in the world", author: "Mahatma Gandhi"},
  {content:"why so serious?", author: "The Joker"},
  {content:"with great power comes great responsibility", author: "Uncle Ben"},
  {content:"a physicist is just an atom’s way of looking at itself", author: "Niels Bohr"},
  {content:"absence, that common cure of love", author: "Lord Byron"},
  {content:"geologists have a saying; rock remembers", author: "Neil Armstrong"},
  {content:"energy and persistence conquer all things", author: "Benjamin Franklin"},
  {content:"every painting is a voyage into a sacred harbor", author: "Giotto"},
  {content:"not knowing anything is the sweetest life", author: "Sophocles"},
  {content:"you miss 100% of the shots you don’t take", author: "Wayne Gretzky"},
  {content:"eighty percent of success is showing up", author: "Woody Allen"},
  {content:"the best revenge is massive success", author: "Frank Sinatra"},
  {content:"dream big and dare to fail", author: "Norman Vaughan"},
  {content:"i'm a reflection of the community", author: "Tupac Shakur"},
  {content:"time spent with cats is never wasted", author: "Sigmund Freud"},
  {content:"being number two sucks", author: "Andre Agassi"},
  {content:"power comes in response to a need, not a desire", author: "Goku"},
  {content:"a strong spirit transcends rules", author: "Prince"},
  {content:"float like a butterfly, sting like a bee", author: "Muhammad Ali"},
  {content:"greatness is the dream of youth realized in old age", author: "Alfred de Vigny"},
  {content:"there is no great genius without a mixture of madness", author: "Aristotle"},
  ])

#incorrects = []
#incorrects << Incorrect.create([{word: 'dont', level: 1}, {word: 'luv', level: 1}])