class Cook < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :location, :service, :price, presence: true
end
