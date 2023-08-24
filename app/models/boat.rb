class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many_attached :images
  has_many :reviews
  belongs_to :user
end
