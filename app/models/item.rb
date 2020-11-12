class Item < ApplicationRecord
    attribute :price, default: 2.0
    has_and_belongs_to_many :appeals
    has_one_attached :image
end
