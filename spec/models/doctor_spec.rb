require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject {
    described_class.new(first_name: "Anything",
                        last_name: "Lorem ipsum",
                        code: "123456")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid with first name" do
    subject.first_name = "Mario"
    expect(subject).to be_valid
  end

  it "is valid with last name" do
    subject.last_name = "López"
    expect(subject).to be_valid
  end

  it "is valid with code" do
    subject.code = "1234"
    expect(subject).to be_valid
  end

end
