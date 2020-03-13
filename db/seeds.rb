# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
30.times do
  library = Library.create(
    name: Faker::Book.title,
    author: Faker::Book.author,
    punisher: Faker::Book.publisher,
    genre: Faker::Book.genre
  )

  10.times do
    library.book.build(
      title: Faker::Book.title,
      author: Faker::Book.author,
      punisher: Faker::Book.publisher
    ).save
  end
end

10.times do
  @author = Author.create(
    book: Faker::Book.title,
    name: Faker::Book.author,
    genre: Faker::Book.genre
  )
end
