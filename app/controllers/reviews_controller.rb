class ReviewsController < ApplicationController
  before_action :set_boat, only: %i[create]
  before_action :authenticate_user!, only: [:create]

  def create
    @boat = Boat.find(params[:boat_id])
    @review = @boat.reviews.new(review_params)
    @review.user = current_user
    @review.save
    redirect_to boat_path(@boat)
  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end
