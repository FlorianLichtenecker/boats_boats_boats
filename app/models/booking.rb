class Booking < ApplicationRecord
  attr_accessor :date_range, :message

  belongs_to :user
  belongs_to :boat
end
