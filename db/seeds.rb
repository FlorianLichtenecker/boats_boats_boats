# db/seeds.rb

# Clearing existing data
User.destroy_all
Boat.destroy_all

User.create!(
  email: "123@123.com",
  password: "123123"
)

puts "Log-in user (123123@123.com, 123123) created."

user = User.first
image_names = ['boat_1.jpg', 'boat_2.jpg', 'boat_3.jpg']

3.times do |index|
  boat = Boat.create!(
    name: Faker::Vehicle.unique.make,
    length: Faker::Number.decimal(l_digits: 2, r_digits: 2),
    width: Faker::Number.decimal(l_digits: 2, r_digits: 2),
    height: Faker::Number.decimal(l_digits: 2, r_digits: 2),
    user: user
  )

  # Attach an image from app/assets/images directory
  boat_image_path = Rails.root.join('../boats_boats_boats/app/assets/images', image_names[index])
  boat.images.attach(io: File.open(boat_image_path), filename: image_names[index], content_type: 'image/jpg')
end

puts "Seeded #{Boat.count} boats."
