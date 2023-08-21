class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
