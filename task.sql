USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN p_WarehouseID INT
)
BEGIN
    SELECT
        p.Name,
        pi.WarehouseAmount
    FROM ProductInventory AS pi
    JOIN Products AS p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID=p_WarehouseID;
END //

DELIMITER ;
