class Region < ApplicationRecord
    has_many :appeals, dependent: :destroy
end
