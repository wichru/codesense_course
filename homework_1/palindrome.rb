def palindrome?(sentence)
  array = sentence.downcase.delete(' ').split('')
  array == array.reverse
end

puts palindrome?('Kobyła ma mały bok')
puts palindrome?('kajak')
puts palindrome?('kajak i wiosło')
