# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Song.destroy_all
    Artist.destroy_all
    Genre.destroy_all

    kiki = Song.create(name: "Hotline Bling", artist_id: 1, genre_id: 1)
    right_back = Song.create(name: "Right Back", artist_id: 2, genre_id: 2)

    drake = Artist.create(name: "Drake", bio: "Degrassi")
    khalid = Artist.create(name: "Khalid", bio: "Slow Jams")

    rap = Genre.create(name: "Rap")
    slow = Genre.create(name: "R&B")