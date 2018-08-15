class Pesel
  attr_accessor :pesel

  def initialize(pesel)
    @pesel = pesel
  end

  def run
    message
  end

  def correct
    control = '13791379131'.split('')
    result = (@pesel.to_s.split('').inject(0) do |sum, item|
      sum + item.to_i * control.shift.to_i
    end % 10).zero?
    (result ? 'prawidłowy' : 'nieprawidłowy')
  end

  def sex
    array = @pesel.to_s.split('').map(&:to_i)
    (array[9].even? ? 'kobieta' : 'mężczyzna')
  end

  def date_of_birth
    dates = @pesel.to_s.split('').map(&:to_i)
    p dates[4, 2]
  end

  def message
    puts "Pesel #{@pesel} jest #{correct}\nInformacje o peselu:
    - płeć: #{sex}
    - data urodzenia: "
  end
end

Pesel.new(ARGV[0]).date_of_birth
# pesel.correct
# pesel.sex
