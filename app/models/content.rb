class Content < ApplicationRecord

    validates :title, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

end

# title, description,start_date estan en migrate 