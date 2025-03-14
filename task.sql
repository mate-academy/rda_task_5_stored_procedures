USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN FilterID INT
)
BEGIN
	SELECT Products.Name, WarehouseAmount
	FROM ProductInventory
	INNER JOIN Warehouses
	ON ProductInventory.WarehouseID = Warehouses.ID
	INNER JOIN Products
	ON ProductInventory.ProductID = Products.ID
	WHERE Warehouses.ID = FilterID;
END //
DELIMITER ;