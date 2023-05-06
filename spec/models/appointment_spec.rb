require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { Doctor.create(first_name: "Mario", last_name: "López", code: "3456") }
  let(:patient) { Patient.create(first_name: "Edward", last_name: "Mora") }

  subject {
    described_class.new(date: DateTime.now,
                        doctor: doctor,
                        patient: patient)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid with date" do
    subject.date = DateTime.now + 2.week
    expect(subject).to be_valid
  end

  it "is valid with doctor" do
    subject.doctor = doctor
    expect(subject).to be_valid
  end

  it "is valid with patient" do
    subject.patient = patient
    expect(subject).to be_valid
  end

end