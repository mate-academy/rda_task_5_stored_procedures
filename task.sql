USE ShopDB;
 
CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Warehouses (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE ProductInventory (
    ID INT PRIMARY KEY,
    ProductID INT,
    WarehouseAmount INT,
    WarehouseID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);


-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN my_warehouse_id INT)
BEGIN
	SELECT
    Products.Name, 
    ProductInventory.WarehouseAmount
    FROM Products
    INNER JOIN  ProductInventory ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = my_warehouse_id;
END //
DELIMITER ;