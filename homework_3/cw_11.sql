SELECT Products.name, Products.price, Manufacturers.name FROM Products
LEFT JOIN Manufacturers ON Manufacturers.code = Products.Manufacturer;
