class Review < ApplicationRecord
  nota = [0, 1, 2, 3, 4, 5]

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: nota }, numericality: { only_integer: true }
end
