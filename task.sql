USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT p.Name AS ProductName, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products AS p ON ProductInventory.ProductID = p.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;

