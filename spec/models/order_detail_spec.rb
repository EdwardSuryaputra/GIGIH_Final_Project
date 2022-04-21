require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  describe 'invalid if attribute blank' do
    it 'is invalid without a menu id' do
      order = FactoryBot.build(:order_detail, order_id: 1)
      order.valid?
      expect(order.errors[:menu_id]).to include("can't be blank")
    end

    it 'is invalid without a unit price' do
      order = FactoryBot.build(:order_detail, menu_id: 1, order_id: 1, unit_price: nil)
      order.valid?
      expect(order.errors[:unit_price]).to include("can't be blank")
    end

    it 'is invalid without a quantity' do
      order = FactoryBot.build(:order_detail, menu_id: 1, order_id: 1, quantity: nil)
      order.valid?
      expect(order.errors[:quantity]).to include("can't be blank")
    end
  end
end
