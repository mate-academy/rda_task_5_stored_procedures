USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN Amount INT
)
BEGIN
    select Products.Name
	from ProductInventory
	INNER JOIN Products ON ProductInventory.ProductID = Products.ID
	where ProductInventory.WarehouseAmount = Amount;
END //
DELIMITER ;


