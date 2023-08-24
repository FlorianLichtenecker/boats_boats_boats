class EnrichBoatModel < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :location, :string
    add_column :boats, :price, :float
    add_column :boats, :capacity, :integer
    add_column :boats, :decks, :integer
    add_column :boats, :crew_required, :boolean
  end
end
