SELECT manufacturers.name AS manufacturer_name,
products.name AS products_name,
products.price AS products_price
FROM products
JOIN manufacturers ON products.manufacturer = manufacturers.code
WHERE price = (
  SELECT price FROM products
  WHERE manufacturer = manufacturers.code
  ORDER BY price DESC LIMIT 1
);
