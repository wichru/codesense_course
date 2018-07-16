def word_count(something)
  grouped = something.downcase.split.group_by { |e| e.itself }
  grouped.transform_values { |element| element.count }

end

puts word_count('foo Foo bar bar Bar')
puts word_count('Losowy ciąg znaków ciąg')
