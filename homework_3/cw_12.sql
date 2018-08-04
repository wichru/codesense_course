SELECT AVG(price), Manufacturers.code FROM Manufacturers
LEFT JOIN Products ON Manufacturers.code = Products.Manufacturer
GROUP BY Manufacturers.code;
