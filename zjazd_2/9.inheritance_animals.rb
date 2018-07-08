class Animal
  attr_accessor :age, :name, :number_of_legs

  class Cat < Animal
    def behavior
      puts "I'm lazzy"
    end
  end

  class BlackCat < Cat
    def to_s
      "I'm blac"
    end

  class Dog < Animal
    def making_sound
      puts "woof! woof!"
    end
  end
  
