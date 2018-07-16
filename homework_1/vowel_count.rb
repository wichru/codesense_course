def vowel_count(something)
  # vowels = ["a", "e", "i", "o", "u", "y" ]
  # something.chars.count {|m| vowels.include?(m) }
  something.count("aeiou")
end

puts vowel_count(' test pouisdafaafs')
