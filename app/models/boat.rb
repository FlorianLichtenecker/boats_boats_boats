class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :bookings, dependent: :destroy
  has_many_attached :images
  has_many :reviews, dependent: :destroy
  belongs_to :user
end
