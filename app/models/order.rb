class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cook
  has_many :reviews

  validates :date, presence: true
end
