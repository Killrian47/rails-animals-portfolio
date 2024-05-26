require "open-uri"
require "json"

# Clean the database
CatBreed.destroy_all if Rails.env.development?

# Create new records for cat 67 breeds
puts "Creating cat breeds..."
url = "https://api.thecatapi.com/v1/breeds"
response = URI.parse(url).read
data = JSON.parse(response)
data.each do |breed|
  CatBreed.create!(name: breed["name"])
end
puts "Finished creating cat breeds!"
