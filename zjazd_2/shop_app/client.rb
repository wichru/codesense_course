class Client
  attr_accessor :list
  attr_reader :money, :name, :bag

  def initialize(name, money)
    @name = name
    @money = money
    @list = []
    @bag = []
  end

  def perform_shopping(shop)
    while product_name = list.pop
      product = shop.take(product_name)
      bag << product
    end

    true
  end

  def to_s
    str = "Name: #{@name}, Money: #{@money}"
    str += "\nList: " + @list.join(',')
    str += "\nBag: " + @bag.map(&:name).join(',')
  end
end
