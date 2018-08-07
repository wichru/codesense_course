SELECT products.price, products.name FROM Products
JOIN Manufacturers ON Manufacturers.code = products.Manufacturer
ORDER BY products.price
LIMIT 1;
