Song.destroy_all
Artist.destroy_all

artist_1 = Artist.create!(name: "Jules Ahoi", remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510408234/jules-ahoi-3_k9ileg.jpg")
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

=begin
photo_1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510408234/jules-ahoi-3_k9ileg.jpg", artist: artist_1)
photo_2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510408234/fil-bo-riva_presse16_xxt5zq.jpg", artist: artist_2)
photo_3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510408236/3a6b3b1cccbd9b15be2833bc6fd5ea9a15a1d721_w8htor.jpg", artist: artist_3)
=end
