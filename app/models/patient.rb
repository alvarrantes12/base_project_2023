class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors,through: :appointments

    validates :first_name, presence: :true, length: { maximum: 10 }
    validates :last_name, presence: :true, length: { minimum: 5 }
end
