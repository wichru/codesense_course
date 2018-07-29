require './product_collection'

class ProductReporter
  CSV_PATH = 'products.csv'.freeze

  def initialize(min_max_price)
    # @min_count, @max_count = min_max_count
    @min_price, @max_price = min_max_price
  end

  def call
    products = product_collection.select do |product|
      product.price >= @min_price && product.price <= @max_price
    end
    puts products
  end

  private

  def product_collection
    ProductCollection.new(CSV_PATH)
  end
end
