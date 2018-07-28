class Shop
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product, quantity=1)
    quantity.times do
      @products.push(product)
    end
  end

  def take(product_name)
    index = @products.index { |product| product.name == product_name }

    @products.delete_at(index) if index
  end
end
