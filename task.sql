USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
IN WarehouseFilter INT
)
BEGIN
	SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON Products.ID = ProductInventory.ProductID
    WHERE WarehouseID = WarehouseFilter;
END //
DELIMITER ;
