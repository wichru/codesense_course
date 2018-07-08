class Food
  def eat
    puts "Hell yeah! Im eating"
  end
end


class Orange < Food
  def  blend
    puts "blending..."
  end
end

Orange.new.eat



class Animal
  def age
    puts "I have some age probably"
  end

  def name
    puts "From time to time I have some name also"
  end

  def number_of_legs
    puts "4 legs"
  end
end

  class Cat < Animal
    def behavior
      puts "I'm lazzy"
    end
  end

  class Dog < Animal
    def making_sound
      puts "woof! woof!"
    end
  end

  Dog.new.age
