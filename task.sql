USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN p_warehouse_id INT
)
BEGIN
    select Products.Name, ProductInventory.WarehouseAmount
	from ProductInventory
	INNER JOIN Products ON ProductInventory.ProductID = Products.ID
	where ProductInventory.WarehouseID = p_warehouse_id;
END //
DELIMITER ;


