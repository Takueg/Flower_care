class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :image_urls

# validates :title, length: {minimum: 15}
  validates :address, presence: true
  validates :description, length: {minimum: 15}
  validates :instruction, presence: true
  # validates :date, presence: true


end
