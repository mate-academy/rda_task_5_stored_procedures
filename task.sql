USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory (IN warehouseId INT)
BEGIN
    SELECT Name, WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductId = Products.Id
    WHERE WarehouseID = warehouseId;
END //
DELIMITER ;