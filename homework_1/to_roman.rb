hash = {
  1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
}

def to_roman(int)
  r = ""
  hash.each do |v, l|
    r << l*(int / v)
    int = int %v
  end
  return r
end

puts to_roman(5)
