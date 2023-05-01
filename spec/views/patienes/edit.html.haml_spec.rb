require 'rails_helper'

RSpec.describe "patienes/edit", type: :view do
  let(:patiene) {
    Patiene.create!(
      first_name: "MyString",
      last_name: "MyString"
    )
  }

  before(:each) do
    assign(:patiene, patiene)
  end

  it "renders the edit patiene form" do
    render

    assert_select "form[action=?][method=?]", patiene_path(patiene), "post" do

      assert_select "input[name=?]", "patiene[first_name]"

      assert_select "input[name=?]", "patiene[last_name]"
    end
  end
end
