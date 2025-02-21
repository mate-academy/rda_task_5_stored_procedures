USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( IN TargetWarehouseID INT)
BEGIN
    SELECT pr.Name, pi.WarehouseAmount FROM ProductInventory pi
    JOIN Products pr ON pi.ProductID = pr.ID
    WHERE WarehouseID=TargetWarehouseID;
END //
DELIMITER ;