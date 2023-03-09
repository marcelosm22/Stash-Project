# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "date"

15.times do
  Forum.create(
    title: Faker::Movie.title
  )
end

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

10.times do
  List.create(
    title: Faker::Color.color_name,
    user_id: rand(1..4)
)
end

10.times do
  Bookmark.create(
    list_id: rand(1..10),
    forum_id: rand(1..15)
)
end

10.times do
  Post.create(
    content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    user_id: rand(1..4),
    date: DateTime.now,
    forum_id: rand(1..15)
)
end

20.times do
  Comment.create(
    comment_content: Faker::Quotes::Shakespeare.hamlet_quote,
    user_id: rand(1..4),
    post_id: rand(1..10)
  )
end
