def middle(something)
  if something.length.odd?
    something[something.length/2]
  else
    something[something.length/2-1] + something[something.length/2]
  end
end

puts middle("fuckerss")
puts middle("fuckers")
