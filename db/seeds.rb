# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Artwork.create(title: "The Lord of the Rings",
              price: 40,
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              photo: "https://images.unsplash.com/photo-1617503752587-97d2103a96ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0d29ya3xlbnwwfHwwfHw%3D&w=1000&q=80",
              user_id: 2
)
Artwork.create(title: "Different artworks",
              price: 50,
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              photo: "https://cdna.artstation.com/p/assets/images/images/036/542/764/large/haitam-ouahabi-art-style-doodle-abstract-surrealism-artwork-by-haitam-ouahabi.jpg?1617933074",
              user_id: 2
)
