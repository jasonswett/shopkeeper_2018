require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'when name is missing' do
    it 'is not valid' do
      customer = FactoryBot.build(:customer, name: '')
      expect(customer).not_to be_valid
    end
  end

  context 'when name is not unique' do
    it 'is not valid' do
      FactoryBot.create(:customer, email: 'john.smith@example.com')
      customer = FactoryBot.build(:customer, email: 'john.smith@example.com')
      expect(customer).not_to be_valid
    end
  end
end
