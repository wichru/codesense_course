require 'csv'

class Products
  attr_reader :foo

  def initialize
    @foo = CSV.foreach("products.csv", headers: true).map

  end

  def joinable(block_element)
    block_element.values_at(0,1).join(" ")
  end

  def show_products
    @foo.each { |e| puts joinable(e) }
  end

  def search(fruit)
    @foo.detect { |product| product[0] == fruit
      puts joinable(product) }
  end

  def lower_price(price)
    @foo.detect { |product| product[1] < price.to_s
      puts joinable(product) }
  end

  def higher_price(price)
    @foo.detect { |product| product[1] > price.to_s
      puts joinable(product) }
  end

  def conversion(fx_rate, fx, path)
    rate = []
    name = []
    rate = @foo.each { |product| (product[1].to_f * fx_rate).round(2).to_s + fx }
    name = @foo.each { |name| name[0] }

    CSV.open(path, "wb") do |csv|
      csv << name.zip(rate)
    end
  end


end

loader = Products.new
puts 'List of products with prices:'
loader.show_products
puts '-----------------------------'
puts 'Search by product:'
loader.search("apple")
puts '-----------------------------'
puts 'Lower prices than in an argument:'
loader.lower_price(2.25)
puts '-----------------------------'
puts 'Higher prices than in an argument:'
loader.higher_price(2.25)
loader.conversion(3.45, "EUR", "testing.csv")
