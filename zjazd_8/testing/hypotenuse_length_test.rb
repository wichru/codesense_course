require './hypotenuse_length'

def hypotenuse_length_test
  raise "Doesn't work" unless hypotenuse_length(3, 4) == 5.0
  raise "Doesn't work" unless hypotenuse_length(4, 3) == 5.0
  raise "Doesn't work" unless hypotenuse_length(6, 8) == 10.0
  raise "Doesn't work" unless hypotenuse_length(2, 10).round(1) == 10.2

  "It's ok!"
end

puts hypotenuse_length_test
