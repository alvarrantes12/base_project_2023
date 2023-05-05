require 'rails_helper'
RSpec.describe Doctor, type: :model do
  subject{
    described_class.new(first_name: "String",
                        last_name: "Anything",
                        code: "1234")
  }

  it "is valid with valid atributes" do
    expect(subject).to be_valid

  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first name longer than 8 characters' do
    subject.first_name = 'aaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last name shorter than 3 characters' do
    subject.last_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a duplicated code' do
    existing_doctor = described_class.create(first_name: 'AAAA', last_name: 'AAAAA', code: '4321')
    subject.code = existing_doctor.code
    expect(subject).to_not be_valid
  end

  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:patients).through(:appointments) }
  end

end
