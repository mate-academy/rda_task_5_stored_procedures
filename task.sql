DROP DATABASE ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN my_warehouse_id INT)
BEGIN
    SELECT
    Products.Name,
    ProductInventory.WarehouseAmount
    FROM Products
    INNER JOIN ProductInventory ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = my_warehouse_id;
END //
DELIMITER ;