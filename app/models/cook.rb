class Cook < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  validates :address, :schedulle, :price, presence: true

end
