class BoatsController < ApplicationController
  before_action :set_boat, only: %i[show edit destroy]

  def index
    @boats = Boat.all
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
    end
  end

  def show
    @reviews = Review.where(boat_id: @boat.id)
    @review = Review.new
    @booking = Booking.new()
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.save
    redirect_to boats_path
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    redirect_to boat_path(@boat), notice: 'Listing was successfully updated.'
  end

  def destroy
    @boat.destroy
    redirect_to boats_path, notice: 'Listing was successfully destroyed.'
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(
      :name, :length, :width, :height, :location, :price, :capacity, :decks, :crew_required, images: []
    )
  end
end
