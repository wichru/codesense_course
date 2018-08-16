class Calc
attr_accessor :x, :y

  def initialize
    @x = x
    @y = y
  end

  def run
    loop do
      show_tasks
      parse_action
      if @action >= '5'
        puts 'Bye, bye'
        break
      end
      numbers
      execute
    end
  end

  def show_tasks
    puts "Chose operation:
    1. Add numbers
    2. Substract numbers
    3. Multiply numbers
    4. Divide numbers
    5. Quit"
    print 'What is your choice?: '
  end

  def parse_action
    @action = gets.chomp
  end

  def numbers
    print 'Enter first number: '
    @x = gets.chomp
    print 'Enter second number: '
    @y = gets.chomp
  end

  def execute
    case @action
    when '1'
      add_numbers
    when '2'
      substract
    when '3'
      multiply
    when '4'
      divide
    when '5'
      exit
    end
  end

  def add_numbers
    result = @x.to_i + @y.to_i
    puts "==> #{@x} + #{@y} = #{result}"
  end

  def substract
    result = @x.to_i - @y.to_i
    puts "==> #{@x} - #{@y} = #{result}"
  end

  def multiply
    result = @x.to_i * @y.to_i
    puts "==> #{@x} * #{@y} = #{result}"
  end

  def divide
    if @y.to_i.zero?
      puts "--E--R--R--O--R-- \n\Don't divide by 0 you moron!"
    else
      result = @x.to_f / @y.to_f
      puts "==> #{@x} / #{@y} = #{result}"
    end
  end
end

Calc.new.run
