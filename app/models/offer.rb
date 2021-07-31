class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image_url

# validates :title, length: {minimum: 15}
  validates :address, presence: true
  validates :description, length: {minimum: 15}
  validates :instruction, presence: true
  # validates :date, presence: true


end
