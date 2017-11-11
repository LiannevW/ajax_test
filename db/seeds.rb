Song.destroy_all
Artist.destroy_all

artist_1 = Artist.create!(name: "Jules Ahoi")
artist_2 = Artist.create!(name: "Fil bo riva")
artist_3 = Artist.create!(name: "Tom Odell")

Song.create!([
{ name: "Robinson Crusoe", artist: artist_1 },
{ name: "Salt and Sun", artist: artist_1 },
{ name: "Killer Queen", artist: artist_2 },
{ name: "Another Love", artist: artist_3 },
{ name: "Heal", artist: artist_3 },
{ name: "Another Love - Zwette Edit", artist: artist_3 }
  ])
