require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        category_name: "Category Name",
        menu: nil
      ),
      Category.create!(
        category_name: "Category Name",
        menu: nil
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Category Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
