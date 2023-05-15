class Owner < ApplicationRecord
    has_many :pets

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }  
    validates :owner_id, presence: true, length: { minimum: 5, maximum: 8 }, uniqueness: true
    validates :level, presence: true

    enum level: { "gold": 0, "silver": 1, "bronze": 2 }
end
