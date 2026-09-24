-- task.sql

USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory (IN warehouse_id INT)
BEGIN
    SELECT
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount AS Amount
    FROM ProductInventory
    JOIN Products ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END//

DELIMITER ;