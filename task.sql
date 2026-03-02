USE ShopDB; 
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN IDfilter INT
)
BEGIN
    SELECT Name, WarehouseAmount FROM ProductInventory 
    INNER JOIN Products
    ON ProductInventory.ProductID=Products.ID
    WHERE WarehouseID=IDfilter;
END //
DELIMITER ;
