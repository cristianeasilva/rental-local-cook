class Cook < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :location, :service, :name, :price, presence: true

  include PgSearch::Model

  pg_search_scope :search_infos,
    against: [ :location, :price, :service, :name ],
    associated_against: {
      user: [:first_name, :last_name],
    },
    using: {
      tsearch: { prefix: true }
    }
end
