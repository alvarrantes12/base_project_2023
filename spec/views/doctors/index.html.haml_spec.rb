require 'rails_helper'

RSpec.describe "doctors/index", type: :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        first_name: "First Name",
        last_name: "Last Name"
      ),
      Doctor.create!(
        first_name: "First Name",
        last_name: "Last Name"
      )
    ])
  end

  it "renders a list of doctors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
  end
end
