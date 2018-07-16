def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

def leap_years(array)
  array.select do |y|
    leap_year?(y)
  end
end


puts leap_years([2011, 2012, 2015, 2016, 2018])
puts leap_years((2000..2100).to_a)
