require './products_importer'
require 'json'

class JSONProductsImporter < ProductsImporter

  def run
    JSON.parse(File.read(@path))['products'].each do |row|
      product = Product.new(row['name'], row['price'].to_f)

      @shop.add_product(product, row["quantity"].to_i)
    end
  end
end
