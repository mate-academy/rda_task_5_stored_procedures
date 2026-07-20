USE ShopDB;

-- Create your stored procedure here
DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN p_warehouse_id INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount AS Amount
    FROM ProductInventory pi
    JOIN Products p ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = p_warehouse_id;
END$$

DELIMITER ;
