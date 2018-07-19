require 'csv'

class Products
  attr_accessor :name, :price, :weight, :list_of_products

  def initialize(*args)
    @name = args[0]
    @price = args[1]
    @weight = args[2]
    @list_of_products = Products.load_CSV

  end

  def self.load_CSV
    file = File.read("products.csv")
    # CSV.load(file, nil, symbolize_names: true)
    # puts file

  end

  def search_product(something)
    @name.each do |product|
      if something = product
        puts product
      end
    end
    # doesn't work! have to figure out how to change arguments in CSV file to an array
  end

end

product = Products.new(['apple', '3zł', '20kg'])
product.search_product('apple')
