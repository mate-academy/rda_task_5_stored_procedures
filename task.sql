DROP DATABASE IF EXISTS ShopDB;

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Warehouses (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    WarehouseAmount INT NOT NULL,
    WarehouseID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);

INSERT INTO Countries (Name) VALUES ('USA');
INSERT INTO Countries (Name) VALUES ('Canada');

INSERT INTO Products (Name) VALUES ('Product A');
INSERT INTO Products (Name) VALUES ('Product B');

INSERT INTO Warehouses (Name, Address, CountryID) VALUES ('Warehouse 1', '123 Warehouse St', 1);
INSERT INTO Warehouses (Name, Address, CountryID) VALUES ('Warehouse 2', '456 Warehouse Rd', 2);

INSERT INTO ProductInventory (ProductID, WarehouseAmount, WarehouseID) VALUES (1, 100, 1);
INSERT INTO ProductInventory (ProductID, WarehouseAmount, WarehouseID) VALUES (2, 150, 1);
INSERT INTO ProductInventory (ProductID, WarehouseAmount, WarehouseID) VALUES (1, 200, 2);
INSERT INTO ProductInventory (ProductID, WarehouseAmount, WarehouseID) VALUES (2, 50, 2);

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT p.Name AS ProductName, pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id;
END $$

DELIMITER ;