# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


10.times do |i|
  User.create(
    email: "user#{i}@example.com",
    password: "123456",
  )
end



30.times do
  Article.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n"),
    user_id: User.all.sample.id,
  )
end