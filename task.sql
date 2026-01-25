USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN ID_Filter_Warehouse INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount FROM ProductInventory
    INNER JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = ID_Filter_Warehouse;
END //
DELIMITER ;


