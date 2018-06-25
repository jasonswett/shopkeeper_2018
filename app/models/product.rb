class Product < ApplicationRecord
  has_many :inventory_adjustments
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  def quantity
    inventory_adjustments.sum(:quantity)
  end
end
