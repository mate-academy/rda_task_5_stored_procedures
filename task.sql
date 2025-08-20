USE ShopDB; 

-- Create your stored procedure here
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id_param INT)
BEGIN
    SELECT 
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM 
        ProductInventory pi
    JOIN 
        Products p ON pi.ProductID = p.ID
    WHERE 
        pi.WarehouseID = warehouse_id_param;
END //

DELIMITER ;