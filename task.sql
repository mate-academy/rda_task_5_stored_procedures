USE ShopDB; 
-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseId INT
)
-- list of product names, along with their amount in the warehouse.
BEGIN
	SELECT p.Name, pi.WarehouseAmount
	FROM Products p
	JOIN ProductInventory pi ON pi.ProductID = p.ID
	WHERE pi.WarehouseID = WarehouseId;
END //
DELIMITER ;
