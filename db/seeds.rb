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
Correct.destroy_all
Incorrect.destroy_all
AdminUser.create!(email: 'hein.rodrigo@gmail.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'damoraherrera@gmail.com', password: 'password', password_confirmation: 'password')

tags = Tag.create([{name:'Musician'}, {name: 'Athlete'}, {name:'Fictional'}, {name:'Artist'},
  {name:'Historic'}, {name:'Litterateur'}, {name:'Unknown'}])

quotes = Quote.create([
<<<<<<< HEAD
  {content:"Don't go to the grave with life unused", author: "Bobby Bowden", tag: tags[0]}, 
  {content:"it is very easy to love alone", author: "Gertrude Stein", tag: tags[0]},
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
=======
  {content:"don't go to the grave with life unused", author: "Bobby Bowden", tag: tags[1]}, 
  {content:"it is very easy to love alone", author: "Gertrude Stein", tag: tags[5]},
  {content:"man, I love being a turtle", author: "Michelangelo", tag: tags[2]},
  {content:"I shall not die of a cold. I shall die of having lived", author: "Willa Cather", tag: tags[5]},
  {content:"the critical period of matrimony is breakfast-time", author: "A.P. Herbert", tag: tags[5]},
  {content:"the heart was made to be broken", author: "Oscar Wilde", tag: tags[5]},
  {content:"real discoveries come from chaos", author: "Chuck Palahniuk", tag: tags[5]},
  {content:"there are two sides to every question", author: "Protagoras", tag: tags[5]},
  {content:"a hangover is the wrath of grapes", author: "Unknown", tag: tags[6]},
  {content:"my home is not a place, it is people", author: "Lois McMaster Bujold", tag: tags[5]},
  {content:"we learn geology the morning after the earthquake", author: "Ralph Waldo Emerson", tag: tags[5]}, 
  {content:"a satellite has no conscience", author: "Edward R. Murrow", tag: tags[4]},
  {content:"a true woman always loves a real soldier", author: "Belle Boyd", tag: tags[4]},
  {content:"a girl should be two things: classy and fabulous", author: "Coco Chanel", tag: tags[3]},
  {content:"a man is great by deeds, not by birth", author: "Chanakya", tag: tags[5]},
  {content:"you must be the change you wish to see in the world", author: "Mahatma Gandhi", tag: tags[4]},
  {content:"why so serious?", author: "The Joker", tag: tags[2]},
  {content:"with great power comes great responsibility", author: "Uncle Ben", tag: tags[2]},
  {content:"a physicist is just an atom's way of looking at itself", author: "Niels Bohr", tag: tags[5]},
  {content:"absence, that common cure of love", author: "Lord Byron", tag: tags[5]},
  {content:"geologists have a saying; rock remembers", author: "Neil Armstrong", tag: tags[4]},
  {content:"energy and persistence conquer all things", author: "Benjamin Franklin", tag: tags[4]},
  {content:"every painting is a voyage into a sacred harbor", author: "Giotto", tag: tags[3]},
  {content:"not knowing anything is the sweetest life", author: "Sophocles", tag: tags[3]},
  {content:"you miss 100% of the shots you don't take", author: "Wayne Gretzky", tag: tags[1]},
  {content:"eighty percent of success is showing up", author: "Woody Allen", tag: tags[3]},
  {content:"the best revenge is massive success", author: "Frank Sinatra", tag: tags[0]},
  {content:"dream big and dare to fail", author: "Norman Vaughan", tag: tags[0]},
  {content:"i'm a reflection of the community", author: "Tupac Shakur", tag: tags[3]},
  {content:"time spent with cats is never wasted", author: "Sigmund Freud", tag: tags[4]},
  {content:"being number two sucks", author: "Andre Agassi", tag: tags[1]},
  {content:"power comes in response to a need, not a desire", author: "Goku", tag: tags[2]},
  {content:"a strong spirit transcends rules", author: "Prince", tag: tags[0]},
  {content:"float like a butterfly, sting like a bee", author: "Muhammad Ali", tag: tags[1]},
  {content:"greatness is the dream of youth realized in old age", author: "Alfred de Vigny", tag: tags[5]},
  {content:"there is no great genius without a mixture of madness", author: "Aristotle", tag: tags[5]},
>>>>>>> 68bcb096e997e2f7fb68335144a5b8f90bca7c62
  ])

cword1 = Correct.create(word:"don't")
cword1.incorrects.create(word:"dont", level: 1)
cword2 = Correct.create(word:"love")
cword2.incorrects.create(word:"luv", level: 1)
cword3 = Correct.create(word:"turtle")
cword3.incorrects.create(word:"turtel", level: 1)
cword4 = Correct.create(word:"die")
cword4.incorrects.create(word:"dye", level: 1)
cword5 = Correct.create(word:"matrimony")
cword5.incorrects.create(word:"matrimoney", level: 1)
cword6 = Correct.create(word:"heart")
cword6.incorrects.create(word:"hart", level: 1)
cword7 = Correct.create(word:"discoveries")
cword7.incorrects.create(word:"discoverees", level: 1)
cword8 = Correct.create(word:"to")
cword8.incorrects.create(word:"too", level: 1)
cword9 = Correct.create(word:"grapes")
cword9.incorrects.create(word:"graipes", level: 1)
cword10 = Correct.create(word:"place")
cword10.incorrects.create(word:"plase", level: 1)
cword11 = Correct.create(word:"learn")
cword11.incorrects.create(word:"lern", level: 1)
cword12 = Correct.create(word:"satellite")
cword12.incorrects.create(word:"satelite", level: 1)
cword13 = Correct.create(word:"always")
cword13.incorrects.create(word:"alweys", level: 1)
cword14 = Correct.create(word:"should")
cword14.incorrects.create(word:"shoud", level: 1)
cword15 = Correct.create(word:"great")
cword15.incorrects.create(word:"graet", level: 1)
cword16 = Correct.create(word:"see")
cword16.incorrects.create(word:"se", level: 1)
cword17 = Correct.create(word:"serious")
cword17.incorrects.create(word:"serius", level: 1)
cword18 = Correct.create(word:"responsibility")
cword18.incorrects.create(word:"responsability", level: 1)
cword19 = Correct.create(word:"atom's")
cword19.incorrects.create(word:"atoms", level: 1)
cword20 = Correct.create(word:"common")
cword20.incorrects.create(word:"comon", level: 1)
cword21 = Correct.create(word:"have")
cword21.incorrects.create(word:"haves", level: 1)
cword22 = Correct.create(word:"yellow")
cword22.incorrects.create(word:"yelow", level: 1)
cword23 = Correct.create(word:"all")
cword23.incorrects.create(word:"al", level: 1)
cword24 = Correct.create(word:"voyage")
cword24.incorrects.create(word:"voyaje", level: 1)
cword25 = Correct.create(word:"sweetest")
cword25.incorrects.create(word:"sweetist", level: 1)
cword26 = Correct.create(word:"miss")
cword26.incorrects.create(word:"mis", level: 1)
cword27 = Correct.create(word:"success")
cword27.incorrects.create(word:"sucess", level: 1)
cword28 = Correct.create(word:"revenge")
cword28.incorrects.create(word:"revendge", level: 1)
cword29 = Correct.create(word:"fail")
cword29.incorrects.create(word:"fale", level: 1)
cword30 = Correct.create(word:"community")
cword30.incorrects.create(word:"comunity", level: 1)
cword31 = Correct.create(word:"wasted")
cword31.incorrects.create(word:"wastid", level: 1)
cword32 = Correct.create(word:"two")
cword32.incorrects.create(word:"twu", level: 1)
cword33 = Correct.create(word:"desire")
cword33.incorrects.create(word:"desair", level: 1)
cword34 = Correct.create(word:"transcends")
cword34.incorrects.create([{word:"trancsends", level: 1}, {word:"transends", level: 2}])
cword35 = Correct.create(word:"butterfly")
cword35.incorrects.create([{word:"batterfly", level: 1}, {word:"buterfly", level: 2}])
cword36 = Correct.create(word:"youth")
cword36.incorrects.create([{word:"yuoth", level: 1}, {word:"jouth", level: 2}])
cword37 = Correct.create(word:"mixture")
cword37.incorrects.create([{word:"mexture", level: 1}, {word:"mixtture", level: 2}])

