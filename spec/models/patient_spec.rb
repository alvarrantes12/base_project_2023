require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject {
    described_class.new(first_name: "Anything",
                        last_name: "Lorem ipsum",)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid with first name" do
    subject.first_name = "Luis"
    expect(subject).to be_valid
  end

  it "is valid with last name" do
    subject.first_name = "Gonzalez"
    expect(subject).to be_valid
  end

end
