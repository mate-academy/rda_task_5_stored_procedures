USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN p_WarehouseID INT
)
BEGIN
    SELECT Products.Name as Name, ProductInventory.WarehouseAmount as Amount FROM Warehouses 
    INNER JOIN ProductInventory
    ON ProductInventory.WarehouseID = Warehouses.ID
    INNER JOIN Products
    ON Products.ID = ProductInventory.ProductID
    WHERE Warehouses.ID = p_WarehouseID

END //
DELIMITER ;
