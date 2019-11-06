# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all 
Song.destroy_all 
Genre.destroy_all 

artist_1 =  Artist.create(name:"Frank Sinatra", bio:"the best singer for New York")
artist_2 =  Artist.create(name:"John Legend", bio:"best piano player")
artist_3 =  Artist.create(name:"Mariah Carey", bio:"the diva of all times")
artist_4 =  Artist.create(name:"Bruno Mars", bio:"best pop")

pop = Genre.create(name:"Pop")
classic = Genre.create(name:"Classic")
rb = Genre.create(name:"R&B")

Song.create(name:"Stay the way you are", artist_id: artist_4.id, genre_id: pop.id )
