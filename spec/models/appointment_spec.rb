require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { Doctor.create(first_name: 'John', last_name: 'Doe', code: '1234') }
  let(:patient) { Patient.create(first_name: 'Jane', last_name: 'Smith') }

  subject {
    described_class.new(doctor: doctor, patient: patient, appointment_date: DateTime.now)
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a doctor' do
    subject.doctor = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a patient' do
    subject.patient = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an appointment date' do
    subject.appointment_date = nil
    expect(subject).to_not be_valid
  end

  describe 'associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end
end


end
