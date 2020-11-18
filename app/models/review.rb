class Review < ApplicationRecord
  def self.rating
    [0, 1, 2, 3, 4, 5]
  end
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: self.rating }
  validates :content, presence: true
end
