require 'rails_helper'

RSpec.describe Appointment, type: :model do
  subject {
    described_class.new(date: DateTime.now,
                        doctor: "Name"
                        patient: "Name")
  }
  it "is valid with valid attributes" do
    expect(subject). to be_valid
  end

  it "is not valid without doctor" do
    subject.doctor = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without patient" do
  subject.patient = nil
  expect(subject).to_not be_valid
  end
  
end