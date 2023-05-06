require 'rails_helper'

RSpec.describe "doctors/edit", type: :view do
  let(:doctor) {
    Doctor.create!(
      first_name: "MyString",
      last_name: "MyString",
      code: "MyString"
    )
  }

  before(:each) do
    assign(:doctor, doctor)
  end

  it "renders the edit doctor form" do
    render

    assert_select "form[action=?][method=?]", doctor_path(doctor), "post" do

      assert_select "input[name=?]", "doctor[first_name]"

      assert_select "input[name=?]", "doctor[last_name]"

      assert_select "input[name=?]", "doctor[code]"
    end
  end
end
