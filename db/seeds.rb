# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

#artists
ariana = Artist.create(name: "Ariana Grande", bio: "boy remember where you come frommnnm")
elton = Artist.create(name: "Elton John", bio: "Oh no no no I'm a rocket man")
vamp = Artist.create(name: "Vampire Weekend", bio: "too good for the cheap shit, too cheap for the good shit")

#genres
rock = Genre.create(name: "rock")
pop = Genre.create(name: "pop")
indie = Genre.create(name: "indie")

#songs
break_free = Song.create(name: "Break Free", artist: ariana, genre: pop)
honky_cat = Song.create(name: "Honky Cat", artist: elton, genre: rock)
comma = Song.create(name: "Oxford Comma", artist: vamp, genre: indie)
