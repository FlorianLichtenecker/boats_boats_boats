# db/seeds.rb

# Clearing existing data
User.destroy_all
Boat.destroy_all

5.times do
  # Create a user
  user = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password123' # For simplicity, using a common password for all seeded users
  )

  # Create 2 boats for the user
  2.times do
    Boat.create!(
      name: Faker::Vehicle.unique.make,
      length: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      width: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      height: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      user: user
    )
  end
end

puts "Seeded #{User.count} users and #{Boat.count} boats."

User.create!(
  email: "123@123.com",
  password: "123123"
)

puts "Log-in user (123123@123.com, 123123) created."
