USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN Warehouse_ID INT)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
	FROM ProductInventory
	JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = Warehouse_ID;
END //
DELIMITER ;