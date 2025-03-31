USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseIDFilter INT)
BEGIN
    SELECT 
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = WarehouseIDFilter;
END //
DELIMITER ;
