class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cook
  has_one :review

  validates :date, presence: true
end
