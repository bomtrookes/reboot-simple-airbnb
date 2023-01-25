require 'faker'

puts = "Destroying Database!..."

Flat.destroy_all

puts = "Creating new database..."

flat = Flat.create!(name: , address: , description: , price_per_night: , number_of_guests:)

puts = "Database Loaded..."
