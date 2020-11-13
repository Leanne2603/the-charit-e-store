class Region < ApplicationRecord
    has_many :appeals, dependent: :destroy
    validates :region, presence: true
end
