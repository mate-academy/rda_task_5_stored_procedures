USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseID INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    INNER JOIN Products
    ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;
