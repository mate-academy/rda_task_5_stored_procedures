USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseIDFilter int
)
BEGIN
    SELECT Name, WarehouseAmount FROM ProductInventory
    INNER JOIN Products
    WHERE WarehouseID=WarehouseIDFilter;
END //
DELIMITER ;

