USE ShopDB;

-- Create your stored procedure here
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT 
        p.Name AS ProductName, 
        i.WarehouseAmount
    FROM Products p
    JOIN ProductInventory i ON p.ID = i.ProductID
    JOIN Warehouses w ON i.WarehouseID = w.ID
    WHERE w.ID = warehouse_id;
END //
DELIMITER ;