class Appeal < ApplicationRecord
  belongs_to :region
  has_and_belongs_to_many :items
  has_one_attached :image, dependent: :purge
  validates :appeal, uniqueness: true
  validates :appeal, :description, :recipient, :delivery_address, presence: true

  self.per_page = 9
end
