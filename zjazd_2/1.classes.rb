
class CoffeeMachine
  def grind_grains
    puts 'Grinding grains'
  end

  def make_coffee
    self.grind_grains
    self.add_milk
    puts 'Making coffee'
  end

    def add_milk
      puts 'Adding milk'
    end
end

class Dog
  def give_sound
    puts 'woof! woof!'
  end

  def bring(item)
    if item == 'something'
    puts "this is a method for '#{item}'"
  else
    give_sound
  end
  end
end

dog = Dog.new
dog.bring('something')
dog.bring('blabla')


coffee_machine = CoffeeMachine.new
coffee_machine.make_coffee
