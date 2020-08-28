class Review < ApplicationRecord
  belongs_to :order

  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 5 }
  validates :content, length: { in: 20..140 }
end
