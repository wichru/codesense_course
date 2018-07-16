def consecutives_sum(array)
  result = []
  sum = 0
  array.each_with_index do |k, i|
    if k != array[i+1] && sum == 0
      sum = k
      result << sum
      sum = 0
    elsif k == array[i+1]
      sum += k
    elsif k != array[i+1] && sum != 0
      sum += k
      result << sum
      sum = 0
    end
  end
  result
end

# shorter way (so sad, I didn't know that!):
# array.chunk_while(&:equal?).flat_map(&:sum)

puts consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
