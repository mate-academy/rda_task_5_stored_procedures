USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT p.Name AS ProductName, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Product AS p ON ProductInventoryID = p.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;

