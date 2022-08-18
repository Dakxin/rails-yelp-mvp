class Restaurant < ApplicationRecord
  TYPES = ["chinese", "belgian", "french", "italian", "japanese"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: TYPES }
end
