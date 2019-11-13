# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake flats...'
10.times do
  flat = Flat.new(
    name:    Faker::Lorem.sentence(word_count: 3),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description:  Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    price_per_night: rand(40..200),
    number_of_guests: rand(1..8),
    img_url: "https://picsum.photos/id/#{rand(100..900)}/1200/1200"
  )
  flat.save!
end
puts 'Finished!'
