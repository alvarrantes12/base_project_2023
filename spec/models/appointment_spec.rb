require 'rails_helper'

RSpec.describe Appointment, type: :model do
  subject {
    described_class.new(date:date= Date.new(2023, 1, 1))
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

end
