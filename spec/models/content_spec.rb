require 'rails_helper'

RSpec.describe Content, type: :model do

  subject {
    described_class.new(title: "Anything",
                        description: "Lorem ipsum",
                        special_type: 1,
                        start_date: DateTime.now,
                        end_date: DateTime.now + 1.week)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without title" do
    subject.title = nil #null
    expect(subject).to_not be_valid
  end

  it "is not valid without description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without special_type" do
    subject.special_type = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without start_date" do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without end_date" do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end
end