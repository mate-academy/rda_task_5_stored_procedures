CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT 
        p.Name AS ProductName,
        pi.WarehouseAmount AS Amount
    FROM 
        Products p
    JOIN 
        ProductInventory pi ON p.ID = pi.ProductID
    WHERE 
        pi.WarehouseID = warehouse_id;
END $$

DELIMITER ;
