USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN ID INT)
BEGIN
	SELECT Products.Name AS Name, ProductInventory.WarehouseAmount AS WarehouseAmount
	FROM Products
	INNER JOIN ProductInventory
	ON ProductInventory.ProductID = Products.ID
    INNER JOIN Warehouses
	ON ProductInventory.WarehouseID = Warehouses.ID
    WHERE ProductInventory.WarehouseID = ID;
END //
DELIMITER ;
