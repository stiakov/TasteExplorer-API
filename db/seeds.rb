require_relative './assets/content'
require 'faker'
include Content
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Sarah = User.create!(first_name: 'Sarah', last_name: 'Violet', mobile: '+576004559895', email: 'test@email.net', password: '123456x', password_confirmation: '123456x')

2.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, mobile: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, password: '123456', password_confirmation: '123456')
end

get_countries.each do |country|
  Country.create!(name: country[:name], region: country[:region])
end

get_commerce_type.each do |type|
  CommerceType.create!(name: type)
end

country = Country.find_by(id: 42)
type = CommerceType.all.sample

establishment = Commerce.create!(
    user: Sarah,
    name: 'Bistro Pub',
    description: Faker::Company.bs,
    country: country,
    state: 'Fake State',
    city: Faker::Nation.capital_city,
    address: Faker::Address.full_address,
    landline: Faker::PhoneNumber.phone_number_with_country_code,
    mobile: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email,
    website: Faker::Internet.domain_name,
    instagram: Faker::Internet.username,
    commerce_type: type
)

5.times do
  Photo.create!(imageable: establishment, image_data: Faker::String.random(length: 12))
end

2.times do
  Photo.create!(imageable: Sarah, image_data: Faker::String.random(length: 7))
end

Reservation.create!(user: Sarah, commerce: establishment, seat: 2, date_time: Time.now.to_i)

Favorite.create(user: Sarah, commerce: establishment)