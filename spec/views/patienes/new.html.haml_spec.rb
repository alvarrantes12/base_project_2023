require 'rails_helper'

RSpec.describe "patienes/new", type: :view do
  before(:each) do
    assign(:patiene, Patiene.new(
      first_name: "MyString",
      last_name: "MyString"
    ))
  end

  it "renders new patiene form" do
    render

    assert_select "form[action=?][method=?]", patienes_path, "post" do

      assert_select "input[name=?]", "patiene[first_name]"

      assert_select "input[name=?]", "patiene[last_name]"
    end
  end
end
