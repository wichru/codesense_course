def sum_even(n)
  p (1..n).select(&:even?).sum
end

def step_even(n)
  p (1..n).step(4).sum
end

sum_even(5)
step_even(5)
