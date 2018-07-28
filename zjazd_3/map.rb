require 'pry'

def map(elements)
  array = []

  elements.each do |e|
    array << yield(e)
  end
  array
end


puts map([3,2,3]) { |e| e * 2 }
