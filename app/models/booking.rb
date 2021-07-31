class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  # git status
end
