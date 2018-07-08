class Car(brand, model, color)
  attr_accessor :name, :model, :color

  def initialize(brand, model, color)
    @brand = brand
    @model = model
    @color = color
  end

  def to_s
    "your car is #{@brand} model #{@model} with a color #{@color}"
  end

  # def Car_company(brand)
  #   "Your car is #{brand}"
  # end
  #
  # def model(model)
  #   "model is #{model}"
  # end
  #
  # def Color(color)
  #   "color is #{color}"
  # end
end

car = Car.new("Ford", "Mondeo", "red")
puts car
