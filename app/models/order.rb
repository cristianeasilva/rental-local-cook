class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cook

  validates :date, presence: true
end
