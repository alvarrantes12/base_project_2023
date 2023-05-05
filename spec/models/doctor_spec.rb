require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject{
    described_class.new(first_name: "Test",
                        last_name: "Test Last",
                        code: "898989")
  }

  it "is valid with valid atributes" do
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
  it "is not valid without code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end

end
