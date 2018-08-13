# the simplest way to get sum of even numbers
def sum_even(n)
  p (1..n).select(&:even?).sum
end

# Range#step and Enumerable#sum method
def step_even(n)
  result = []
  (1..n).step(1) { |x| result << x if x.even? }
  puts result.sum
end

# Fibo even numbers
def fibo_even(n)
  fib_only_evens = Enumerator.new do |y|
    a, b = 0, 1
    loop do
      y << a if a.even?
      a, b = b, a + b
    end
  end
  puts fib_only_evens.first(n).reduce(:+)
end

sum_even(5)
step_even(5)
fibo_even(5)
