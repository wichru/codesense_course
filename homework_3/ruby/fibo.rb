def fib(n)
  if n.zero? || n == 1
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

puts fib(ARGV)
