class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients,through: :appointments

    validates :first_name, presence: :true, length: { maximum: 10 }
    validates :last_name, presence: :true, length: { minimum: 5 }
    validates :code, presence: :true, uniqueness: true
end
