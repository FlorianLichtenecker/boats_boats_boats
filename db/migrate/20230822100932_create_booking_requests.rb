class CreateBookingRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :boat, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
