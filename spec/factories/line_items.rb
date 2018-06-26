FactoryBot.define do
  factory :line_item do
    sale
    product
    price 10000
    quantity 1
  end
end
