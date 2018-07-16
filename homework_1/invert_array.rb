def invert_array(array)
  array.map { |e| e*= -1 }
end

puts invert_array([1, 2, 3, 4, 5])
puts invert_array([1, -2, 3, -4, 5])
puts invert_array([0])
