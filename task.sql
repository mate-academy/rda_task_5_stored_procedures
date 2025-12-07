DROP DATABASE IF EXISTS ShopDB;
USE ShopDB;

-- Create your stored procedure here
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_WarehouseID INT
)
BEGIN
    SELECT Products.Name AS ProductName, ProductInventory.WarehouseAmount AS Amount FROM ProductInventory
    LEFT JOIN Products
    ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = p_WarehouseID;
END //
DELIMITER ;
