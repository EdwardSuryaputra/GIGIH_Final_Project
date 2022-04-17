require 'rails_helper'

RSpec.describe "order_details/show", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      menu: nil,
      order: nil,
      unit_price: 2.5,
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
