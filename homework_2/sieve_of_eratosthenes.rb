class Prime

  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def primes
  range = (2..n).to_a
  range.each {|num| range.delete_if {|e| e > num && e % num == 0} }
  range
  end

end

prime = Prime.new(10)
puts "Prime numbers: #{prime.primes}"

# require 'prime'
#
# n = (10)
# primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
#
# primes.include?(n)
#
# puts primes
