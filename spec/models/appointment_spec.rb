require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { Doctor.create(first_name: "Gus", last_name: "Cerati", code: "638383") }
  let(:patient) { Patient.create(first_name: "Car", last_name: "Garcia") }
  subject {
    described_class.new(doctor: doctor,
                        patient: patient,
                        date: DateTime.now + 1.week)
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
