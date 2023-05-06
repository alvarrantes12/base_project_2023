require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { Doctor.create(first_name: "Doc", last_name: "Doctor", code: "12345") }
  let(:patient) { Patient.create(first_name: "Pat", last_name: "Patient") }
  
  subject {
    described_class.new(date: DateTime.now,
                        doctor: doctor,
                        patient: patient)
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end  

  it "is not valid without date" do
    subject.date = nil
    expect(subject).to_not be_valid
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