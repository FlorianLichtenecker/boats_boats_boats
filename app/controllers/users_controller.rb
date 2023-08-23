class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @boats = @user.boats
    @booking_requests = @user.booking_requests
  end
end
