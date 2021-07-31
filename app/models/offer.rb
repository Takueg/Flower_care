class Offer < ApplicationRecord
  belongs_to :user

# validates :title, length: {minimum: 15}
  validates :address, presence: true
  validates :description, length: {minimum: 15}
  validates :instructions, presence: true
  # validates :date, presence: true


end
