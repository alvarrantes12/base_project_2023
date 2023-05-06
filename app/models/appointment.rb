class Appointment < ApplicationRecord
    validates :date, presence: true
    validates :doctor_id, presence: true
    validates :patient_id, presence: true

    belongs_to :doctor
    belongs_to :patient
end
