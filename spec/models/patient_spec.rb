require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject{
    described_class.new(first_name: "Anything",
                        last_name: "Anything")
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
  
  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:doctors).through(:appointments) }
  end
end
