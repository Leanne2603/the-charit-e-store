class Item < ApplicationRecord
    attribute :price, default: 5.0
    has_and_belongs_to_many :appeals
    has_one_attached :image, dependent: :purge
    validates :name, :price, :description, presence: true

    self.per_page = 5
end
