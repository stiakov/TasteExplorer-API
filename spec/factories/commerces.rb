FactoryBot.define do
  factory :commerce do
    name { Faker::Company.name }
    email { Faker::Internet.email }
    city  { Faker::Nation.capital_city }
    state { 'WASHINGTON DC' }
    password { '123456x' }
    password_confirmation { '123456x' }
  end
end
