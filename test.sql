DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Warehouses (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE ProductInventory (
    ID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    WarehouseAmount INT NOT NULL,
    WarehouseID INT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);

INSERT INTO Countries (ID, Name) VALUES
(1, 'Country1');

INSERT INTO Products (ID, Name) VALUES
(1, 'AwersomeProduct');

INSERT INTO Warehouses (ID, Name, Address, CountryID) VALUES
(1, 'Warehouse-1', 'City-1, Street-1', 1);

INSERT INTO ProductInventory (ID, ProductID, WarehouseAmount, WarehouseID) VALUES
(1, 1, 4242, 1);

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id;
END$$

DELIMITER ;

CALL get_warehouse_product_inventory(2);
