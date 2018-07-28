require './client'
require './product'
require './shop'
require './csv_products_importer'
require './json_products_importer'

shop = Shop.new('Stonka')

csv_importer = CSVProductsImporter.new(shop, "products.csv")
csv_importer.run

json_importer = JSONProductsImporter.new(shop, "products.json")
json_importer.run

janusz = Client.new('Janusz', 30)
janusz.list = ['chleb', 'jogurt', 'jogurt', 'szynka']

puts shop.products
