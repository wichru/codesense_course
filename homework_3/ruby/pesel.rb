
def run
  correct(ARGV[0])
end

def correct(pesel)
  control = '13791379131'.split('')
  result = (pesel.to_s.split('').inject(0) do |sum, item|
    sum + item.to_i * control.shift.to_i
  end % 10).zero?
  puts (result ? "Pesel #{pesel} jest prawidłowy" : "Pesel #{pesel} jest nieprawidłowy")
  puts "Infomacje o peselu:"

end

def information
end

run
