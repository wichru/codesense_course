SELECT AVG(products.price), products.name FROM Products
JOIN Manufacturers ON Manufacturers.code = Products.Manufacturer
GROUP BY products.name
HAVING AVG(products.price) >= 150;
