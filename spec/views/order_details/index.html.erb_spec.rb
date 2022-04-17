require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        menu: nil,
        order: nil,
        unit_priceces: "Unit Priceces",
        unit_price: 2.5,
        quantity: 3
      ),
      OrderDetail.create!(
        menu: nil,
        order: nil,
        unit_priceces: "Unit Priceces",
        unit_price: 2.5,
        quantity: 3
      )
    ])
  end

  it "renders a list of order_details" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Unit Priceces".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
