class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]

  def index
    @boats = Boat.all
  end

  def show
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name)
  end
end
