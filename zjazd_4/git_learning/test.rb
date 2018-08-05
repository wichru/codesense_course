def hello(first_name, last_name, count = 1)
  count.times do
    puts "Hello #{first_name} #{last_name}"
  end
end

hello("Janek", "Kowalski", 4)
