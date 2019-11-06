# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist_1 = Artist.create(name: "Michael Jackson", bio: "cool dude")
artist_2 = Artist.create(name: "Tame Impala", bio: "cool band")
artist_3 = Artist.create(name: "Beyonce", bio: "cool lady")

genre_1 = Genre.create(name: "Pop")
genre_2 = Genre.create(name: "Rock")
genre_3 = Genre.create(name: "R&B")

song_1 = Song.create(name:"Thriller" , artist_id: artist_1, genre_id: genre_1)
song_2 = Song.create(name:"Let It Happen" , artist_id: artist_2, genre_id: genre_2)
song_3 = Song.create(name:"Crazy In Love" , artist_id: artist_3, genre_id: genre_3)