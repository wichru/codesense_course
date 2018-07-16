def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0

end

puts leap_year?(2004)
puts leap_year?(2000)
puts leap_year?(2100)
