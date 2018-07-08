module Collar
  def pull
    puts "Pulling..."
  end
end

module Sound
  def type_of_sound
    puts "woof! woof!"
  end
end

module TrackingChip
  def get_tracking_chip
    @tracking_chip ||= rand(100)
  end
end

class Dog
  include Collar
  include Sound
  include TrackingChip
end

dog = Dog.new
puts dog.get_tracking_chip
puts dog.get_tracking_chip
puts dog.get_tracking_chip
