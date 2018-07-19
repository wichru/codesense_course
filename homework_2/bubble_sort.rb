class Bubble_sort

  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def bubble_sort
  n = array.length
  swapped = true
  while swapped do
     swapped = false
     (n - 1).times do |i|
       if array[i] > array[i + 1]
         array[i], array[i + 1] = array[i + 1], array[i]
     swapped = true
       end
     end
    end
    array
  end

end

sorting = Bubble_sort.new([20, 40,1,123,4,3,2,5,11])
puts sorting.bubble_sort
