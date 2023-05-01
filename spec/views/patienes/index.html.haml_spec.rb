require 'rails_helper'

RSpec.describe "patienes/index", type: :view do
  before(:each) do
    assign(:patienes, [
      Patiene.create!(
        first_name: "First Name",
        last_name: "Last Name"
      ),
      Patiene.create!(
        first_name: "First Name",
        last_name: "Last Name"
      )
    ])
  end

  it "renders a list of patienes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
  end
end
