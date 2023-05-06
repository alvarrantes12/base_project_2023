require 'rails_helper'

RSpec.describe Appointment, type: :model do
 subject{
  described_class.new( date: DateTime.now,
                      doctor_id:"123",
                      patient_id: "345")
 }
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without date" do
   subject.date = nil
   expect(subject).to_not be_valid
  end

  it "is not valid without doctor_id" do
    subject.doctor_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without patient_id" do
    subject.patient_id = nil
    expect(subject).to_not be_valid
  end
end
