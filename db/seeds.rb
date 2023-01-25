require 'faker'

puts "Destroying Database!..."

Flat.destroy_all

building = %w(House Flat Apartment Windmill Treehouse Factory)
size = %w(Tiny Small Medium Big Large)
cost = (25...500).to_a

puts "Creating New database..."

10.times do

  flat = Flat.create!(name: "#{size.sample} #{Faker::Construction.material} #{building.sample}", address: Faker::Address.full_address, description: Faker::Lorem.paragraph(sentence_count: 2) , price_per_night: cost.sample, number_of_guests: (1..12).to_a.sample)

  3.times do
    Review.create!(content: Faker::Restaurant.review, rating: (1..5).to_a.sample, flat_id: flat.id)
  end

end

puts "Database Loaded..."
