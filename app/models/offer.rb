class Offer < ApplicationRecord
  belongs_to :user

# validates :title, length: {minimum: 15}
  validates :address, presence: true
  validates :description, length: {minimum: 15}
  validates :instruction, presence: true


end
