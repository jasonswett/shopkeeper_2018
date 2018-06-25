require 'rails_helper'

RSpec.describe InventoryAdjustment, type: :model do
  context 'when product is missing' do
    it 'is not valid' do
      ia = InventoryAdjustment.new(quantity: 10)
      expect(ia).not_to be_valid
    end
  end

  context 'when quantity is missing' do
    it 'is not valid' do
      product = Product.create!(
        name: 'Divining Rod',
        price: 400000
      )

      ia = InventoryAdjustment.new(product: product)
      expect(ia).not_to be_valid
    end
  end
end
