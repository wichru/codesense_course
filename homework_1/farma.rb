class Animal
  def give_sound

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

class Cat
  def give_sound
    puts 'miau! miau!'
  end
end

class Duck < Animal
  def give_sound
    puts 'duck! duck! maybe?'
  end
end

class Goose < Animal
  def give_sound
    puts 'gę! gę! or something like that'
  end
end

class Farm
  def initialize

  end
end
