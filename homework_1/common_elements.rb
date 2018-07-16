def common_elements(array1, array2)
  array1.select do |e|
    if array2.include?(e)
      puts Array(e)
    end
  end
end

puts common_elements([1, 2, 3, 4, 5], [4, 5, 6])
puts common_elements(['a', 'b', 'c', 'd'], ['c','d', 'e'])
puts common_elements([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227])
