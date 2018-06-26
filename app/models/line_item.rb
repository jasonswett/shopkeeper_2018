class LineItem < ApplicationRecord
  belongs_to :sale
  belongs_to :product
  belongs_to :price
  belongs_to :quantity
end
