USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseFilter INT
)
BEGIN
    SELECT Products.Name, WarehouseAmount
    FROM ProductInventory
    INNER JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE WarehouseID = WarehouseFilter;
END //
DELIMITER ;

CALL get_warehouse_product_inventory(1)