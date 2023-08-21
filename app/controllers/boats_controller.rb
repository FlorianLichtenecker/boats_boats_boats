class BoatsController < ApplicationController
  before_action :set_boat, only: %i[show edit destroy]

  def index
    @boats = Boat.all
  end

  def show
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to boat_path(@boat)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name)
  end
end
