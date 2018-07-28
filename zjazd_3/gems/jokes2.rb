require 'CSV'
require 'haar_joke'

CSV.open("something.csv", "wb", col_sep: ";") do |csv|
  csv << ["content", "length"]

  10.times do
    joke = HaarJoke.create_joke
    csv << [joke, joke.split.size]
  end
end
