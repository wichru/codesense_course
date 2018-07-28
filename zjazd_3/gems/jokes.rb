require 'csv'
require 'haar_joke'

File.open("jokes.txt", "w") do |file|
  10.times do
    file.puts HaarJoke.create_joke
  end
end
