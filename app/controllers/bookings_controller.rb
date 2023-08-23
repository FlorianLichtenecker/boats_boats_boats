class BookingsController < ApplicationController

  def create
    date_range = booking_params[:date_range].split(" to ")
    @booking = Booking.new(start_date: Date.parse(date_range[0]), end_date: Date.parse(date_range[1]), status: "open")
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:date_range)
  end
end
