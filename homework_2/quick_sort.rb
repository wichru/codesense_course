class QuickSort

  def sort(arr)
    sort_internally(arr, 0, arr.length-1)
  end

  def is_sorted(arr)
    for i in 1...arr.length
      return false if less(arr[i], arr[i-1])

      return true
    end
  end

  def print_elements(arr)
    arr.each {|it| print it, " " unless it.nil?}
    print "\n"
  end

private
  def sort_internally(arr, lo, hi)
    return if lo >= hi
    j = partition(arr, lo, hi)
    sort_internally(arr, lo, j-1)
    sort_internally(arr, j+1, hi)
  end

  def partition(arr, lo, hi)
    i = lo
    j = hi+1
    p = arr[lo]
    while true
      while less(arr[i+=1], p)
        break if i == hi
      end
      while less(p, arr[j-=1])
        break if j == lo
      end
      break if i >=j
      exchange(arr, i, j)
    end
    exchange(arr, lo, j)
    return j
  end

  def exchange(arr, i, j)
    arr[i], arr[j] = arr[j], arr[i]
  end

  def less(lhs, rhs)
    return lhs < rhs
  end

end

arr = [74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79]
sorting = QuickSort.new
sorting.sort(arr)
puts "Nieposortowana!" unless sorting.is_sorted(arr)
sorting.print_elements(arr)
