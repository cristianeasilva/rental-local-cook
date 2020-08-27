class Cook < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many_attached :photos

  validates :location, :service, :name, :price, presence: true
end
