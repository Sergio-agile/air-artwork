class Artwork < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy

  include PgSearch::Model

  pg_search_scope :search_by_content, against: [ :title, :description ],
  using: {
    tsearch: { prefix: true }
    }
end
