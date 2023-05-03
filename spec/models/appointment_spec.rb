require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # describe "associations" do
  #   it { should belong_to(:doctor) }
  #   it { should belong_to(:patient) }
  # end
  subject {
    described_class.new(date: DateTime.now,
                        doctor: Doctor.create!(first_name: "Doc1", last_name: "Doctor", code: "12345"),
                        patient: Patient.create!(first_name: "Pat1", last_name: "Patient"))
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
