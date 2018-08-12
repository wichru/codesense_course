def multiplication(n)
  (1..n).map { |x| '%3d |' % x + (1..n).map { |y| '%3d' % (x * y) }.join(' ') }
end

def printer
  (1..10).map { |x| puts "----"  }.join(' ')
end

puts multiplication(10)
# printer
