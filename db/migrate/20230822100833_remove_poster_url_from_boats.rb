class RemovePosterUrlFromBoats < ActiveRecord::Migration[6.0]
  def change
    remove_column :boats, :poster_url, :string
  end
end
