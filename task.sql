USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;
DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouseId INT)
BEGIN
    SELECT 
        p.Name AS ProductName,
        pi.WarehouseAmount AS Quantity
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouseId;
END$$

DELIMITER ;


