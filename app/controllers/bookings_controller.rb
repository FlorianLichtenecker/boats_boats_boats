class BookingsController < ApplicationController

  def create
    date_range = booking_params[:date_range].split(" to ")
    @booking = Booking.new(start_date: Date.parse(date_range[0]), end_date: Date.parse(date_range[1]), status: "open")
    @booking.user = current_user
    @booking.boat = Boat.find(params[:boat_id])
    if @booking.save
      flash[:notice] = 'Booking request sent'
      redirect_to boat_path(@booking.boat)
    else
      # Handle the error
      render 'boats/show'
    end
  end

  def accept
    booking = Booking.find(params[:id])
    booking.update(status: 'accepted')
    redirect_to user_dashboard_path
  end

  def reject
    booking = Booking.find(params[:id])
    booking.update(status: 'rejected')
    redirect_to user_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date_range)
  end
end
