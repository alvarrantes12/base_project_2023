require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject {
    described_class.new(first_name: "Doct1",
                        last_name: "Last1",
                        code: "123")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end

end