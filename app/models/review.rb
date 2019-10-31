class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :rating, inclusion: { in: (0..5), allow_nil: false }, numericality: { only_integer: true }
  validates :content, presence: true
end
