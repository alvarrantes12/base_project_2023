class Appointment < ApplicationRecord

  validates :date, presence: true
  belongs_to :doctor
  belongs_to :patient
end
