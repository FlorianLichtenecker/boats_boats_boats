class ReviewsController < ApplicationController
  before_action :set_boat, only: %i[search]

  def search
    @reviews = Review.where(boat: @boat)
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
