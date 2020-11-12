class Appeal < ApplicationRecord
  belongs_to :region

  has_one_attached :image
end
