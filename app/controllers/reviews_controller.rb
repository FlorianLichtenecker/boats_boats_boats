class ReviewsController < ApplicationController
  before_action :set_boat, only: %i[create]

  def create
    @review = Review.new(review_params)
    @review.boat = @boat
    @review.save
    redirect_to boat_path(@boat)
  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
