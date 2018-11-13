require './hypotenuse_length.rb'

def test_hypotenuse_length
  raise "Doesn't work" unless hypotenuse_length(3,4) == 5.0
  raise "Doesn't work" unless hypotenuse_length(4,3) == 5.0
  raise "Doesn't work" unless hypotenuse_length(6, 8) == 10.0

  "it's ok"
end

puts test_hypotenuse_length
