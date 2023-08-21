class AddPosterToBoat < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :poster_url, :string
  end
end
