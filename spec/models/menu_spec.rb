require 'rails_helper'
require 'factory_bot'

RSpec.describe Menu, type: :model do
   it "is invalid with price less than 0.01" do
        menu = build(:menu, price: 0)
        menu.valid?
        expect(menu.errors[:price]).to include("must be greater than 0.01")
    end

  
end
