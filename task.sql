USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN p_WarehouseID INT)
BEGIN
    SELECT p.Name AS 'Name', pi.WarehouseAmount AS 'Amount'
    FROM ProductInventory pi
    INNER JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = p_WarehouseID; 
END //
DELIMITER ;