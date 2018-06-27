class Product < ApplicationRecord
  has_many :inventory_adjustments
  has_many :line_items
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  def quantity
    inventory_adjustments.sum(:quantity)
  end

  def total_sales
    line_items.sum(:price)
  end
end
