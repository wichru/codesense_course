def initials(name)
  name = name.split (' ')
  name.map { |shortname| shortname[0].upcase }.join
end

puts initials ('real Mother fucker')
