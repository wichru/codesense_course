def find_index(array, value)
  if array.include?(value)
    result = array.index do |index|
      index == value
    end
    puts result
  else
    puts 'not found'
  end
end

# def find_index(array, value)
#   array.each_with_index do |e, i|
#     if array[e] == value
#       puts i
#     end
#   end
# end

find_index([1, 2, 3, 4, 5], 3)
find_index([5, 8, 6, 2, 2, 10], 2)
find_index([10, 20, 30], 100)
find_index([], 0)
