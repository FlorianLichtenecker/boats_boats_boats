class Review < ApplicationRecord
  belongs_to :boat
  belongs_to :user

  validates :rating, presence: true
  validates :content, presence: true
  validates :boat_id, uniqueness: { scope: :user_id, message: "was already reviewed" }
end
