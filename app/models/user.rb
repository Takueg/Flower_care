class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offers
  has_many :bookings

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :phone_number, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
