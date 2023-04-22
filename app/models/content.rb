class Content < ApplicationRecord
    #Es en la manera en que se acegura que sea requerido
    validates :title, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date,presence: true
end
