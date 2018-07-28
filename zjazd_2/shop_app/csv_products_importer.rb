require './products_importer'
require 'csv'

class CSVProductsImporter < ProductsImporter
  def run
    CSV.open(@path, headers: true).each do |row|
      product = Product.new(row["name"], row["price"].to_f)

      @shop.add_product(product, row["quantity"].to_i)
    end
  end
end
