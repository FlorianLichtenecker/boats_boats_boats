class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @boats = @user.boats
    @bookings = current_user.bookings.where(status: "accepted")
    @open_requests_count = Booking.joins(:boat).where(boats: { user_id: @user.id }, status: "open").count
  end

  def booking_request_decision
    @user = current_user
    @boats = @user.boats
    @bookings = Booking.joins(:boat).where(boats: { user_id: @user.id }, status: "open")
  end
end
