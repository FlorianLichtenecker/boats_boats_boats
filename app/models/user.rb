class User < ApplicationRecord
  has_many :boats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booking_requests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
