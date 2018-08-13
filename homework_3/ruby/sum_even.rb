def sum_even(n)
  p (1..n).select(&:even?).sum
end

sum_even(5)
