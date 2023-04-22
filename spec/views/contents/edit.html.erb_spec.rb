require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  let(:content) {
    Content.create!(
      title: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:content, content)
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(content), "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "textarea[name=?]", "content[description]"
    end
  end
end
