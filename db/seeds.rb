# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create 20 users
# 20.times do |i|
#   User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     username: Faker::Internet.username,
#     score: rand(5..150)
#   )
# end

# 15.times do |i|
#   Post.create(
#     user_id: rand(1..20),
#     comment: Faker::Lorem.sentence(word_count: 100)
#   )
# end

# 30.times do |i|
#   Quiz.create(
#     question: Faker::Lorem.sentence(word_count: 25),
#     answer: Faker::Boolean.boolean
#   )
# end