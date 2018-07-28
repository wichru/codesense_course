require 'csv'
require './shop'
require './product'

class ProductsImporter
  def initialize(shop, path)
    @shop = shop
    @path = path
  end

  def run
    raise NoMethodError
  end
end
