class Doctor < ApplicationRecord

    validates :first_name, presence: true, length: { maximum: 8 }
    validates :last_name, presence: true, length: { minimum: 3 }
    validates :code, presence: true, uniqueness: true
end