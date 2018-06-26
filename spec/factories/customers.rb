FactoryBot.define do
  factory :customer do
    name { Faker::String.random(10) }
    email { Faker::Internet.email }
  end
end
