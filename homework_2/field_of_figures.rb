class Figura
  attr_accessor :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def area(figure, result)
    puts "The area of #{figure} is: #{(result).round(2)}"
  end

  def circuit(figure, result)
    puts "The circumference of #{figure} is: #{(result).round(2)}
    ---------------------\n"
  end

end

class Kolo < Figura

  def run
    areaOfCircle
    circumferenceOfCircle
  end

  private

  def initialize(r)
    @r = r
    @pi = 3.14
  end

  def areaOfCircle
    result = @pi*@r**2
    area('circle', result)
  end

  def circumferenceOfCircle
    result = 2*@pi*@r
    circuit('circle', result)
  end
end

class Prostokat < Figura

  def run
    areaOfRectangle
    circumferenceOfRectangle
  end

  private

  def areaOfRectangle
    result = a*b
    area('rectangle', result)
  end

  def circumferenceOfRectangle
    result = (2*a)+(2*b)
    circuit('rectangle', result)
  end
end

class Kwadrat < Figura

  def run
    areaOfSquare
    circumferenceOfSquare
  end

  private

  def initialize(a)
    super(a, nil)
  end

  def areaOfSquare
    result = (a**2).round(2)
    area('square', result)
  end

  def circumferenceOfSquare
    result = 4*a
    circuit('square', result)
  end

end

class Trapez < Figura

end

Kolo.new(100).run
Prostokat.new(5,10).run
Kwadrat.new(4.45).run
