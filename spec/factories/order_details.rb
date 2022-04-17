FactoryBot.define do
  factory :order_detail do
    menu { nil }
    order { nil }
    unit_priceces { "MyString" }
    unit_price { 1.5 }
    quantity { 1 }
  end
end
