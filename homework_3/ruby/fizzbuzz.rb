def fizz_buzz
  (1..100).map do |e|
    if (e % 3).zero? && (e % 5).zero?
      puts 'FuzzBuzz'
    elsif (e % 3).zero?
      puts 'Fizz'
    elsif (e % 5).zero?
      puts 'Buzz'
    else
      puts e
    end
  end
end

fizz_buzz
