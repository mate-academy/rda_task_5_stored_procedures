USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN WID INT
)
BEGIN
    SELECT Products.Name AS ProductsName, ProductInventory.WarehouseAmount AS ProductsCount
    FROM ProductInventory 
    JOIN Products ON ProductInventory.ProductID = Products.ID
    JOIN Warehouses ON ProductInventory.WarehouseID = Warehouses.ID
    WHERE Warehouses.ID = WID;
END //
DELIMITER ;
