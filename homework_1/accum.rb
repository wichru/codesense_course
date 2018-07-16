def accum(something)
  starter = ""
  something.chars.each_with_index { |v, i| starter += (v * (i + 1) + "-").capitalize }
  starter
end

puts accum("abcd")
puts accum("RqaEzty")
puts accum("cwAt")
