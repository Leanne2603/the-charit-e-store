class Item < ApplicationRecord
    has_and_belongs_to_many :appeals
    has_one_attached :image
end
