class Car
  attr_accessor :model

  @@number_of_cars = 0

  def initialize(brand, model, color)
    @brand = brand
    @model = model
    @color = color

    @@number_of_cars +=1
  end

  def self.number_of_cars
    @@number_of_cars
  end

  def to_s
    "#{@brand} #{@model} #{@color}"
  end
end

car = Car.new("Ford", "Mondeo", "red")
Car.new("Fiat", "Panda", "red")
Car.new("Opel", "Astra", "red")

puts Car.number_of_cars
