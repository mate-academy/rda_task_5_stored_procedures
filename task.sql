USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseNum INT
)
BEGIN
	SELECT p.Name, pi.WarehouseAmount
    FROM ProductInventory as pi
    INNER JOIN Warehouses as w
    ON pi.WarehouseID = w.ID
    INNER JOIN Products as p
    ON pi.ProductID = p.ID
    WHERE w.ID = WarehouseNum;
END //
DELIMITER ;