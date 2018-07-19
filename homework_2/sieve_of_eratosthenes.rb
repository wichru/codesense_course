class Prime

  attr_accessor :i, :n

  def initialize(i, n)
    @i = i
    @n = n
  end

  def primes
  range = (i..n).to_a
  range.each {|num| range.delete_if {|e| e > num && e % num == 0} }
  range
  end

end

prime = Prime.new(1, 10)
puts "Prime numbers: #{prime.primes}"

# require 'prime'
#
# n = (10)
# primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
#
# primes.include?(n)
#
# puts primes
