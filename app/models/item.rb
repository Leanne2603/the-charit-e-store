class Item < ApplicationRecord
    has_and_belongs_to_many :appeals
    has_one_attached :image, dependent: :purge
    validates :name, uniqueness: true
    validates :name, :price, :description, :price, presence: true

    self.per_page = 5
end
