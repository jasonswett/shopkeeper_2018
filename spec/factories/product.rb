FactoryBot.define do
  factory :product do
    name { Faker::String.random(10) }
    price { Faker::Number.number(5) }
  end
end
