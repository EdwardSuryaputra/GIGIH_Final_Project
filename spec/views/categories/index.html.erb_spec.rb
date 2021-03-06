require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        category_name: "Category Name"
      ),
      Category.create!(
        category_name: "Name"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Category Name".to_s, count: 0
  end
end
