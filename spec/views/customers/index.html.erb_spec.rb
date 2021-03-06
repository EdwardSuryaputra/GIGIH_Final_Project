require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        name: "Name",
        email: "savira@generasigigih.com"
      ),
      Customer.create!(
        name: "Name",
        email: "savin@generasigigih.com"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 0
    assert_select "tr>td", text: "Email".to_s, count: 0
  end
end
