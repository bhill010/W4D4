# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
u1 = User.create!(email: "brandon@yahoo.com", password: "apple")

Band.destroy_all
b1 = Band.create!(name: "Astros")
b2 = Band.create!(name: "Beegees")
b3 = Band.create!(name: "Zeros")

Album.destroy_all
a1 = Album.create!(name: "Planets", band_id: 1, type_album: "studio", year: "2009")
a2 = Album.create!(name: "Beehive", band_id: 2, type_album: "live", year: "2012")
a3 = Album.create!(name: "Queen B", band_id: 2, type_album: "studio", year: "2016")

Track.destroy_all
t1 = Track.create!(name: "Mars", album_id: 1, bonus: "true", description: "Track 1")
t2 = Track.create!(name: "Pluto", album_id: 1, bonus: "false", description: "Track 2")
t3 = Track.create!(name: "Bugs", album_id: 2, bonus: "false", description: "Bees bzzz")
t4 = Track.create!(name: "0 + 0", album_id: 3, bonus: "false", description: "1?!?!")
