USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseIDFilter INT
)
BEGIN
    SELECT p.Name, pi.WarehouseAmount
	FROM Products p
	INNER JOIN ProductInventory pi ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = WarehouseIDFilter;
END //
DELIMITER ;
