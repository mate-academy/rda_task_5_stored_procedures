USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseIDFilter INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount 
    FROM ProductInventory 
    JOIN Products 
    ON ProductInventory.ProductID = Products.ID 
    WHERE ProductInventory.WarehouseID = WarehouseIDFilter;
END //
DELIMITER ;