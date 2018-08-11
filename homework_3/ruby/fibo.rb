def fibo(n)
  n = n.to_i
  if n.zero? || n == 1
    n
  else
    fib = [0, 1]
    (n - 2).times do
      fib << fib[-1] + fib[-2]
    end
    puts fib.join("\n")
  end
end

fibo(ARGV[0])


# class Fibonacci
#   attr_reader :n
#
#   def initialize
#     @n = n
#   end
#
#   def fibo(n)
#     n = n.to_i
#     a = 0
#     b = 1
#
#     n.times do
#       sth = a
#       a = b
#       b = sth + b
#     end
#     return a
#   end
# end
#
# class Run
#   def execute(n)
#     n = n.to_i
#     n.times do
#       block = Fibonacci.new.fibo(ARGV[0])
#       puts block
#     end
#   end
#
# end
#
# Run.new.execute(ARGV[0])
