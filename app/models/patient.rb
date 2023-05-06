class Patient < ApplicationRecord
   
    validates :first_name, presence: true, length: { maximum: 8 }
    validates :last_name, presence: true, length: { minimum: 3 }
end
