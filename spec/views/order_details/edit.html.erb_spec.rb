require 'rails_helper'

RSpec.describe "order_details/edit", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      menu: nil,
      order: nil,
      unit_priceces: "MyString",
      unit_price: 1.5,
      quantity: 1
    ))
  end

  it "renders the edit order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_detail_path(@order_detail), "post" do

      assert_select "input[name=?]", "order_detail[menu_id]"

      assert_select "input[name=?]", "order_detail[order_id]"

      assert_select "input[name=?]", "order_detail[unit_priceces]"

      assert_select "input[name=?]", "order_detail[unit_price]"

      assert_select "input[name=?]", "order_detail[quantity]"
    end
  end
end