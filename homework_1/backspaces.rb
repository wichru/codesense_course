def backspace(something)
  values = something.split
  values.select do |e|
    if e == '#'
      values.delete(e)
    end
  end
  # something.chars.each_with_index {|v, i| v == '#' (i-1) = v.delete) }
end

#zastanowić się nad użyciem hasha

puts backspace('abc#d##c')
