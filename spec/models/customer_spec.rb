require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is invalid with a duplicate email" do
    customer1 = FactoryBot.create(:customer, email: 'savira@generasigigih.com')
    customer2 = FactoryBot.build(:customer, email: 'savira@generasigigih.com')

    customer2.valid?

    expect(customer2.errors[:email]).to include("has already been taken")
  end

end
