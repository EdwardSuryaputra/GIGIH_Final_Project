require 'rails_helper'
require 'factory_bot'

RSpec.describe Menu, type: :model do
  it 'is valid with a name and a price' do
    expect(FactoryBot.build(:menu, description: nil)).to be_valid
  end

  it 'is invalid without a name' do
    menu = FactoryBot.build(:menu, item_name: nil)
    menu.valid?
    expect(menu.errors[:item_name]).to include("can't be blank")
  end

  it 'is invalid without a price' do
    menu = FactoryBot.build(:menu, price: nil)
    menu.valid?
    expect(menu.errors[:price]).to include("can't be blank")
  end
  
  it "is invalid with price less than 0.01" do
        menu = FactoryBot.build(:menu, price: 0)
        menu.valid?
        expect(menu.errors[:price]).to include("must be greater than 0.01")
  end

  it "is invalid with a duplicate name" do
    menu1 = FactoryBot.create(:menu, item_name: 'Nasi Uduk')
    menu2 = FactoryBot.build(:menu, item_name: 'Nasi Uduk')

    menu2.valid?

    expect(menu2.errors[:item_name]).to include("has already been taken")
  end

  
end
