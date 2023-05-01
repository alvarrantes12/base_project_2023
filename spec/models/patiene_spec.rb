require 'rails_helper'

RSpec.describe Patiene, type: :model do
  subject {
    described_class.new(first_name: "Pat1",
                        last_name: "ApPat1")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
end
