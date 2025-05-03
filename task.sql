USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT 
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount AS Amount
    FROM 
        ProductInventory
    JOIN 
        Products ON ProductInventory.ProductID = Products.ID
    WHERE 
        ProductInventory.WarehouseID = warehouse_id;
END$$

DELIMITER ;