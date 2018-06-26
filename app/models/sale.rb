class Sale < ApplicationRecord
  belongs_to :customer
  has_many :line_items

  def total
    line_items.sum(&:total_price)
  end
end
