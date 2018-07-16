def multiples(n)
  sum = 0
  range = (0..n)
  range.each do |e|
    if e %3 == 0 || e %5 == 0
      sum += e
    end
  end
  return sum
end

puts multiples(10)
puts multiples(20)
