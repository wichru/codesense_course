def euclidean_algorithm(x, y)
  x, y = x.to_i, y.to_i
  while y != 0
    t = y
    y = x % y
    x = t
  end
  x
end

puts euclidean_algorithm(ARGV[0], ARGV[1])
