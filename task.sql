USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WhID int
)
BEGIN
    SELECT Name, WarehouseAmount FROM Products p
    join ProductInventory pi
    on p.ID = pi.ProductID
    where WarehouseID=WhID;
END //
DELIMITER ;
