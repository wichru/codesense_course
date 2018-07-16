
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

coffee_machine = CoffeeMachine.new
coffee_machine.make_coffee
