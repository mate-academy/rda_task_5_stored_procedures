USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_warehouse_id INT
)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory AS pi
    INNER JOIN Products AS p
        ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = p_warehouse_id;
END //

DELIMITER ;
