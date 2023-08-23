class RemoveBookingRequest < ActiveRecord::Migration[7.0]
  def change
    drop_table :booking_requests
  end
end
