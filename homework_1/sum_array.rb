def sum_array(array)
  sum = 0
  if array.length > 0
    sum += array.sum - array.min - array.max
  end
end

puts sum_array([1, 2, 3, 4])
puts sum_array([12, 4, 0, -8])
puts sum_array([12, 4])
puts sum_array([120, 7, 145, -10, -15])
