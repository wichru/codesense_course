module Collar
  def pull
    puts "Pulling..."
  end
end

class Dog
  extend Collar
end

class Cat
  include Collar
end

Dog.pull
Cat.new.pull
