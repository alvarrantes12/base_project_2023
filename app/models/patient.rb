class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  validates :first_name, presence: true, length: { maximum: 8}
  validates :last_name, presence: true, length: { minimum: 3}
end