# db/seeds.rb

# Clearing existing data
User.destroy_all
Boat.destroy_all

5.times do
  # Create a user
  user = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password123', # For simplicity, using a common password for all seeded users
    encrypted_password: 'password123' # Added comma here
  )

  # Create 2 boats for the user
  2.times do
    Boat.create!(
      name: Faker::Vehicle.unique.make,
      length: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      width: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      height: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      user: user,
      poster_url: "https://source.unsplash.com/random?motorboat" # Fetching random motorboat image from Unsplash
    )
  end
end

puts "Seeded #{User.count} users and #{Boat.count} boats."
