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
