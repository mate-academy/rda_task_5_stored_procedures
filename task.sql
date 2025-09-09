USE ShopDB; 

-- Create your stored procedure here
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN p_warehouse_id INT
)
BEGIN
    SELECT Products.Name AS Name, ProductInventory.WarehouseAmount AS WarehouseAmount
    FROM ProductInventory
    INNER JOIN Products ON ProductInventory.ProductID=Products.ID
    WHERE ProductInventory.WarehouseID=p_warehouse_id;
END //
DELIMITER ;
