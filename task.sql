-- Drop the database if it exists
DROP DATABASE IF EXISTS ShopDB;

-- Create a new database
CREATE DATABASE ShopDB;

-- Use the newly created database
USE ShopDB;

-- Drop the procedure if it already exists
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    -- Selecting the product names and amounts in the warehouse
    SELECT p.Name AS ProductName, pi.WarehouseAmount AS Amount
    FROM Products p
    JOIN ProductInventory pi ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = warehouse_id;
END //

DELIMITER ;
