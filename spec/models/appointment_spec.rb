require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { Doctor.create(first_name: "Doctor Test", last_name: "Doctor", code: "123456") }
  let(:patient) { Patient.create(first_name: "Patient Test", last_name: "Patient") }
  subject {
    described_class.new(date: DateTime.new(2023, 5, 10, 9, 30),
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
  it "is not valid without a doctor" do
    subject.doctor = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a patient" do
    subject.patient = nil
    expect(subject).to_not be_valid
  end
end