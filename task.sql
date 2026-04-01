DROP DATABASE IF EXISTS ShopDB;
USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_warehouse_id INT
)
BEGIN

    SELECT 
	Products.Name,
	ProductInventory.WarehouseAmount
    FROM ProductInventory
    INNER JOIN Products
    ON ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = p_warehouse_id;

END //
DELIMITER ;
