# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

city_array = []

20.times do
    city = City.create!(
      name: Faker::Lorem.word,
      zip_code: Faker::Address.zip_code
    )
    city_array << city
  end

10.times do
     doctor = Doctor.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city_id:city_array.sample.id,
      zip_code: Faker::Address.zip_code
    )
end

20.times do
    patient = Patient.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city_id:city_array.sample.id,
      zip_code: Faker::Address.zip_code
    )
  end

20.times do
    speciality = Specialty.create!(
      name: Faker::Lorem.word,
    )
end

puts "yolo"