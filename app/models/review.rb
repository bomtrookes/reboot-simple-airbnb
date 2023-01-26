class Review < ApplicationRecord
  belongs_to :flat

  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
end
