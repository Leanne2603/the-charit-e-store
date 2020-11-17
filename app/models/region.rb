class Region < ApplicationRecord
    has_many :appeals, dependent: :destroy
    validates :region, presence: true

    self.per_page = 50
end
