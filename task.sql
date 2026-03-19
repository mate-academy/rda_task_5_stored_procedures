USE ShopDB; 

-- Create your stored procedure here

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouseID INT)
BEGIN
    SELECT
        p.Name          AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouseID;
END //

DELIMITER ;
