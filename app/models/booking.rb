class Booking < ApplicationRecord
  attr_accessor :date_range
  
  belongs_to :user
  belongs_to :boat
end
