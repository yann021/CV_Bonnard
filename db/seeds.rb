# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#User.destroy_all
#Home.destroy_all
#Experience.destroy_all
#Training.destroy_all
#Developement.destroy_all
5.times do |i|
User.create!(first_name: Faker::Name.first_name, laste_name: Faker::Name.last_name, email: "test#{i}@yopmail.com", password: "123456", current_work: Faker::Job.title, street_name: Faker::Address.street_address, city: Faker::Address.city , phone: Faker::PhoneNumber.phone_number_with_country_code, mail: Faker::Internet.email )
puts "User create"
i += 1
end

10.times do
  Home.create!(title: Faker::Movies::HarryPotter.book, website: "http://www.bdf.net", description: Faker::Movies::HarryPotter.quote)
end
puts "Home create"

10.times do
  Experience.create!(businessName: Faker::Job.title, work: Faker::Job.title, date: Faker::Date.forward(23), website: "http://www.bdf.net", description: Faker::Movies::Ghostbusters.quote)
end
puts "Experience create"

10.times do
  Training.create!(title: Faker::DcComics.name, trainingCenter: Faker::University.name, date: Faker::Date.forward(23), website: "http://www.bdf.net", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
end
puts "Training create"

10.times do
  Developement.create!(title: Faker::Movie.quote,  developmentDate: Faker::Date.forward(23), website: "http://www.bdf.net", description: Faker::Movies::VForVendetta.speech)
end
puts "Developpement create"