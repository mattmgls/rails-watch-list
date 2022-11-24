# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."

Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "Creating movies with faker..."

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote
  )
  movie.save!
end

puts "Creating lists with faker..."

10.times do
  list = List.new(
    name: Faker::Book.title
  )
  list.save!
end

puts "Creating bookmarks with faker..."

10.times do
  bookmark = Bookmark.new(
    comment: Faker::Quote.famous_last_words,
    movie: Movie.all.sample,
    list: List.all.sample
  )
  bookmark.save!
end

puts "Finished!"