USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory (
	IN IDWarehouse varchar(3)
)
BEGIN
SELECT Products.Name, ProductInventory.WarehouseAmount
FROM ProductInventory
LEFT JOIN Products ON ProductInventory.ProductID = Products.ID
WHERE ProductInventory.WarehouseID = IDWarehouse;
END //
DELIMITER ;