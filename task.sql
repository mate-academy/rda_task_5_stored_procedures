USE ShopDB;
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouseID INT)
BEGIN
    SELECT 
        Products.Name AS product_name,
        ProductInventory.WarehouseAmount AS amount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = warehouseID;
END //

DELIMITER ;