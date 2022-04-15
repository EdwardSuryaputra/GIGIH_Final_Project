require 'rails_helper'

RSpec.describe "menus/index", type: :view do
  before(:each) do
    assign(:menus, [
      Menu.create!(
        item_name: "Item Name",
        price: 2.5,
        description: "MyText"
      ),
      Menu.create!(
        item_name: "Item Name",
        price: 2.5,
        description: "MyText"
      )
    ])
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", text: "Item Name".to_s, count: 0
    assert_select "tr>td", text: 2.5.to_s, count: 0
    assert_select "tr>td", text: "MyText".to_s, count: 0
  end
end
