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

Artist.create(name: "Bob Dylan", bio: "Ramblin Man")
Artist.create(name: "Bruce Springsteen", bio: "The Boss")
Artist.create(name: "Michael Jackson", bio: "King of Pop")

Genre.create(name: "Pop")
Genre.create(name: "Rock")
Genre.create(name: "Folk")


