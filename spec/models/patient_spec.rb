require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject {
    described_class.new(first_name: "TestF",
                        last_name: "TestDoc")
  }

 it "is valid with valid attributes" do
  expect(subject).to be_valid
 end

it "is not valid without first_name" do
  subject.first_name = nil
  expect(subject).to_not be_valid
end

it "is not valid without last_name" do
  subject.last_name = nil
  expect(subject).to_not be_valid
end

end
