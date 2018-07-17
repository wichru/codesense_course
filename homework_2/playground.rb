
require 'prime'

num = (10)
primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}

primes.include?(num)

puts primes

# class Sieve
#   attr_accessor :n, :numbers
#
#   def initialize(n)
#     @n = n
#     @numbers = 2.upto(n).to_a
#   end
#
#   def find_primes
#     index = 0
#     cur = numbers[index]
#     while (cur * cur < n)
#       index += 1 while numbers[index].nil?
#       cur = numbers[index] # new prime
#       index += 1
#       index.upto(n).each { |i| numbers[i] = nil if numbers[i] && numbers[i] % cur == 0 }
#     end
#     numbers.compact!
#   end
# end
#
# params = Sieve.new(10)
# puts "Prime numbers: #{params.find_primes}"
