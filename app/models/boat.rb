class Boat < ApplicationRecord
  has_many_attached :images
  has_many :reviews
  belongs_to :user
end
