class Prime

  attr_accessor :n

  def initialize
    @n = n
  end

  def primes(n)
  range = (2..n).to_a
  range.each {|num| range.delete_if {|e| e > num && e % num == 0} }
  range
  end

end

prime = Prime.new
puts "Prime numbers: #{prime.primes(10)}"

# require 'prime'
#
# n = (10)
# primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
#
# primes.include?(n)
#
# puts primes
