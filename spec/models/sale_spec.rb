require 'rails_helper'

RSpec.describe Sale, type: :model do
  describe '#total' do
    it 'returns the total for the sale' do
      sale = Sale.create!(
        customer: create(:customer),
        line_items: [
          create(:line_item, price: 500),
          create(:line_item, price: 1000, quantity: 2)
        ]
      )

      expect(sale.total).to eq(2500)
    end
  end
end
