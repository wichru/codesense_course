def highest_number(number)
  number.to_s.split('').sort.reverse.join
end

puts highest_number(132)
puts highest_number(1464)
puts highest_number(165423)
