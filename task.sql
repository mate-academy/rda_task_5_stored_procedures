USE ShopDB;

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory pi
    INNER JOIN Products p ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = warehouse_id;
END $$

DELIMITER ;

-- Create your stored procedure here
