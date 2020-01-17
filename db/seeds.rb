require_relative './assets/content'
require 'faker'
include Content
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sarah = User.create!(first_name: 'Sarah', last_name: 'Violet', mobile: '+576004559895', email: 'test@email.net', password: '123456x', password_confirmation: '123456x')

get_countries.each do |country|
  Country.create!(name: country[:name], region: country[:region])
end

get_commerce_type.each do |type|
  CommerceType.create!(name: type)
end

country = Country.find_by(id: 42)
type = CommerceType.all.sample

Commerce.create!(
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