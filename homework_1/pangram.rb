def pangram?(something)
  return true if ('a'..'z').all? { |e| something.split.include?(e) }

end

puts pangram?('Dosc blazenstw, zra moj pek luznych fig')
puts pangram?('Losowy ciąg znaków')
