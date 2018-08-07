CREATE TABLE Manufacturers (
Code SERIAL PRIMARY KEY NOT NULL,
Name TEXT NOT NULL
);

CREATE TABLE Products (
Code SERIAL PRIMARY KEY NOT NULL,
Name TEXT NOT NULL ,
Price REAL NOT NULL ,
Manufacturer INTEGER NOT NULL,
FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
);

INSERT INTO Manufacturers(Name) VALUES('Sony');
INSERT INTO Manufacturers(Name) VALUES('Creative Labs');
INSERT INTO Manufacturers(Name) VALUES('Hewlett-Packard');
INSERT INTO Manufacturers(Name) VALUES('Iomega');
INSERT INTO Manufacturers(Name) VALUES('Fujitsu');
INSERT INTO Manufacturers(Name) VALUES('Winchester');
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Hard drive', 240, 5);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Memory', 120, 6);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('ZIP drive', 150, 4);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Floppy disk', 5, 6);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Monitor', 240, 1);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('DVD drive', 180, 2);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('CD drive', 90, 2);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Printer', 270, 3);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Toner cartridge', 66, 3);
