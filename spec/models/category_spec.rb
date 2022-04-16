require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is invalid with a duplicate name" do
    category1 = FactoryBot.create(:category, category_name: 'Eastern')
    category2 = FactoryBot.build(:category, category_name: 'Eastern')

    category2.valid?

    expect(category2.errors[:category_name]).to include("has already been taken")
  end
end
