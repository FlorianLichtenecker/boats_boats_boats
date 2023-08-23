class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @boats = @user.boats
  end
end
