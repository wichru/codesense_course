class Eratostenesa
  def initialize(2..n)
    @n = n
    @range = (2..n).to_a
  end

  def sieve_of_eratsthenes
    @range
  end
end



# require 'prime'
#
# num = (10)
# primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
#
# primes.include?(num)
#
# puts primes
