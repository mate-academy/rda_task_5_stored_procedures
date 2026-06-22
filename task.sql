USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseIdFilter INT
)
BEGIN
    SELECT Products.Name AS ProductName, WarehouseAmount 
    FROM ProductInventory
    INNER JOIN Products
    ON ProductInventory.ProductID = Products.ID 
    WHERE ProductInventory.WarehouseID = WarehouseIdFilter;
END //
DELIMITER ;