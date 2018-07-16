def avg_array(*arrays)
  [*arrays].transpose.map do |e|
    e.inject do |k, v|
      k + v
    end / arrays.length
  end
end
# map solution but it doesn't work, probably because I didn't declared variable - ask on the course!!!!
# [*arrays].transpose.map { |e| e.each { |key, value| key + value } / arrays.length }
# [*arrays]

puts avg_array([1, 3, 5], [3, 5, 7])
puts avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17])
