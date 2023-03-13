# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"


User.create(
  username: "antonio",
  password: "123456",
  email: "antonio@gmail.com"
)
User.create(
  username: "marcelo",
  password: "123456",
  email: "marcelo@gmail.com"
)
User.create(
  username: "wagner",
  password: "123456",
  email: "wagner@gmail.com"
)
User.create(
  username: "ruda",
  password: "123456",
  email: "ruda@gmail.com"
)



file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726454/movie%20posters/everything-everywhere-all-at-once-movie-poster_gufrmk.jpg")
forum_1 = Forum.new(title: "Everything Everywhere All At Once", creator: "Daniel KwanDaniel Scheinert", year: "2022", category: "Movies" )
forum_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_1.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726506/movie%20posters/harry-potter-and-the-order-of-the-phoenix-movie-poster_defzfx.jpg")
forum_2 = Forum.new(title: "Harry Potter and the Order of the Phoenix", creator: "David Yates", year: "2007", category: "Movies" )
forum_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_2.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726574/movie%20posters/x-men-days-of-future-past-movie-poster_o0q3oh.jpg")
forum_3 = Forum.new(title: "X-Men: Days of Future Past", creator: "Bryan Singer", year: "2014", category: "Movies" )
forum_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_3.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726626/movie%20posters/the-gray-man-movie-poster_ta9adn.jpg")
forum_4 = Forum.new(title: "The Gray Man", creator: "Anthony RussoJoe Russo", year: "2022", category: "Movies" )
forum_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_4.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726661/movie%20posters/top-gun-maverick-movie-poster_sa52us.jpg")
forum_5 = Forum.new(title: "Top Gun: Maverick", creator: "Joseph Kosinski", year: "2022", category: "Movies" )
forum_5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_5.save


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726697/movie%20posters/thor-love-and-thunder-movie-poster-md_jpwxf3.jpg")
forum_6 = Forum.new(title: "Thor: Love and Thunder", creator: "Taika Waititi", year: "2022", category: "Movies" )
forum_6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_6.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726713/movie%20posters/spider-man-far-from-home-international-movie-poster-md_sd4cgc.jpg")
forum_7 = Forum.new(title: "Spider-Man: Far from Home", creator: "Jon Watts", year: "2019", category: "Movies" )
forum_7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_7.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726748/movie%20posters/once-upon-a-time-in-hollywood-movie-poster-md_v3ofel.jpg")
forum_8 = Forum.new(title: "Once Upon a Time... in Hollywood", creator: "Quentin Tarantino", year: "2019", category: "Movies" )
forum_8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_8.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726782/movie%20posters/dark-phoenix-movie-poster-md_d4hwnc.jpg")
forum_9 = Forum.new(title: "X-Men: Dark Phoenix", creator: "Simon Kinberg", year: "2019", category: "Movies" )
forum_9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_9.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678726816/movie%20posters/how-to-train-your-dragon-the-hidden-world-teaser-movie-poster-md_kpkdte.jpg")
forum_10 = Forum.new(title: "How to Train Your Dragon: The Hidden World", creator: "Dean DeBlois", year: "2019", category: "Movies" )
forum_10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_10.save
