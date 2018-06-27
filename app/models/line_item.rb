class LineItem < ApplicationRecord
  belongs_to :sale
  belongs_to :product

  def total_price
    price * quantity
  end
end
