class Cook < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :location, :service, :name, :price, presence: true
end
