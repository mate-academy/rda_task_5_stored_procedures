USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN pWarehouseID INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount AS Amount
    FROM ProductInventory pi
    JOIN Products p ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = pWarehouseID;
END $$

DELIMITER ;