# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Artwork.create(title: "The Lord of the Rings",
#               price: 40,
#               description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
#               photo: "https://images.unsplash.com/photo-1617503752587-97d2103a96ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0d29ya3xlbnwwfHwwfHw%3D&w=1000&q=80",
#               user_id: 2
# )
# Artwork.create(title: "Different artworks",
#               price: 50,
#               description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
#               photo: "https://cdna.artstation.com/p/assets/images/images/036/542/764/large/haitam-ouahabi-art-style-doodle-abstract-surrealism-artwork-by-haitam-ouahabi.jpg?1617933074",
#               user_id: 2
# )

require "faker"

# 10.times do |_i|
#   # Post.create(title: "My post number #{i}")
#   # Post.create(title: Faker::Music.band, url: Faker::Sports::Football.player, votes: 2)
#   Artwork.create(title: Faker::Artist.name, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), price: Faker::Number.decimal(l_digits: 2))
# end

# loop for creating multiple users
counter_user = 0
20.times do
  counter_artwork = 0
  counter_user += 1
  puts "Creating user #{counter_user} ..."
  user = User.create!(email: Faker::Internet.unique.email, password: 'password', first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, address: Faker::Address.unique.full_address, age: rand(18..100))
  url = "https://source.unsplash.com/random?sig=#{rand(1..60)}/&avatar/40x40"
  file = URI.open(url)
  user.avatar.attach(io: file, filename: "#{user.last_name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')
  # loop for creating multiple artworks
  3.times do
    counter_artwork += 1
    puts "Creating artwork #{counter_artwork} ..."
    artwork = Artwork.create!(title: Faker::Artist.name, description: Faker::Lorem.unique.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), price: Faker::Number.decimal(l_digits: 2), user_id: user.id)
    url = "https://source.unsplash.com/random?sig=#{rand(1..90)}/&art/800x600"
    file = URI.open(url)
    artwork.photos.attach(io: file, filename: "#{artwork.title.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')
  end
end

# # loop for creating multiple users
# 20.times do |_i|
#   user = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, age: rand(18..100))
#   # loop for creating multiple artworks
#   3.times do |_i|
#     artwork = Artwork.create!(title: Faker::Artist.name, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), price: Faker::Number.decimal(l_digits: 2), user_id: user.id)
#     count = 0
#     3.times do
#       count += 1
#       url = "https://source.unsplash.com/random?sig=#{rand(1..60)}/&art/800x600"
#       file = URI.open(url)
#       artwork.photos.attach(io: file, filename: "#{artwork.title.gsub(" ", "-")}-#{count}.jpeg", content_type: 'image/jpeg')
#     end
#   end
# end

# # loop for creating multiple users
# 20.times do |_i|
#   User.create(email: Faker::Internet.email, encrypted_password: Faker::Internet.password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, age: rand(18..100))
#   # loop for creating multiple artworks
#   3.times do |_i|
#     Artwork.create(title: Faker::Artist.name, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), price: Faker::Number.decimal(l_digits: 2))
#   end
# end

# https://github.com/faker-ruby/faker/blob/master/doc/default/name.md
# https://github.com/faker-ruby/faker/blob/master/doc/default/internet.md
# https://github.com/faker-ruby/faker/blob/master/doc/default/address.md
# https://github.com/faker-ruby/faker/blob/master/doc/default/artist.md
# https://github.com/faker-ruby/faker/blob/master/doc/default/lorem.md
# https://github.com/faker-ruby/faker/blob/master/doc/default/number.md
