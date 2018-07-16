# def queue_time(something, int)
#   array = Array.new(n,0)
#   while array.length > 0
#     array << something.shift
#     array.sort!
#   end
#   array.max
# end

def queue_time(customers, n)
 checkout = Array.new(n,0)
 customers.each {|e| checkout[checkout.index(checkout.min)] += e }
 checkout.max
end


# array - array of a customer service time
# checkout - number of free slots

puts queue_time([5, 3,4], 1)
puts queue_time([10, 2, 3, 3], 2)
puts queue_time([2, 3, 10], 2)
