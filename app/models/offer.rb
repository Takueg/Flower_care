class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :image_urls

# validates :title, length: {minimum: 15}
  validates :address, presence: true
  validates :description, length: {minimum: 15}
  validates :instruction, presence: true
  # validates :date, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
