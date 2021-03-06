class Sale < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  accepts_nested_attributes_for :line_items, :customer

  def total
    line_items.sum(&:total_price)
  end

  def line_item_list
    line_items.map { |line_item| line_item.product.name }.join(', ')
  end
end
