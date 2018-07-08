class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def welcome(user)
    puts "Welcome #{user.name}!"
    user.hello(self)
  end

  protected

  def hello(user)
    puts "Hello #{user.name}!"
  end
end


user_1 = User.new("Tomek")
user_2 = User.new("Kasia")

user_1.welcome(user_2)
