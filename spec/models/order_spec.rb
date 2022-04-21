require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'is invalid without a customer' do
      order = FactoryBot.build(:order, customer_id: nil)
      order.valid?
      expect(order.errors[:customer_id]).to include("can't be blank")
  end

  it 'is invalid without a date' do
      order = FactoryBot.build(:order, date: nil ,customer_id: 1)
      order.valid?
      expect(order.errors[:date]).to include("can't be blank")
  end

  it 'is invalid with a status other than new paid cancelled' do
      order = FactoryBot.build(:order, customer_id: 1, status: "newww")
      order.valid?
      expect(order.errors[:status]).to include("is not included in the list")
  end
end
