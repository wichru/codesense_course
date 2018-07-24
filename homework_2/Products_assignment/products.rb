require 'csv'

class Products
  attr_accessor :source, :name

  def initialize
    self.name = name

  end



  def csv_hash(product_name)
    array = []
    CSV.foreach("products.csv", headers: true) do |row|
      array << row["name"]
      array << row["price"]
    end
    array.each do |element|
        if element == product_name
          puts element
        else
        puts "Product doesn't exist"
      end
    end
  end



  def csv_reader
    CSV.foreach("products.csv", headers: true, header_converters: :symbol) do |row|
      puts row.values_at(0,1).join(" ")
    end
  end

  def search(finding_name)

  end

end

product = Products.new

product.csv_hash("orange")
