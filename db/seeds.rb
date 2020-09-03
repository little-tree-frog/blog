# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Starting seed"
Post.destroy_all

posts = Post.create([
  {name: "Post 1", body: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false)},
  {name: "Post 2", body: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false)}
])

tags = Tag.create([
  {tag: "code"},
  {tag: "ruby"},
  {tag: "javascript"},
  {tag: "education"}
])

users = User.create([
  {email: "hello@world.com", password: "helloworld"}
  ])

puts "Finished seed"
