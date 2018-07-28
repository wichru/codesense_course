def range(from, to)
  while from < to
    yield from
    from = from + 1
  end
end

range(0,10) do |e|
  puts e
end
