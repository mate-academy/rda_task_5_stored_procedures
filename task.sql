USE ShopDB;

DROP DATABASE IF EXISTS ShopDB;
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN w_id INT
)
BEGIN
    SELECT ProductInventory.WarehouseAmount, Products.Name
    FROM ProductInventory
    INNER JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = w_id;
END //
DELIMITER ;
