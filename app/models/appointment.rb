class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    validates :date, presence: true
    validates :patient_id, presence: true
    validates :doctor_id, presence: true
end
