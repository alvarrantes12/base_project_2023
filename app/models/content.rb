class Content < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

    enum special_type: {'video': 0, 'streaming': 1, 'image': 2}
end
