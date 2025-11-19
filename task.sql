USE ShopDB;

DELIMITER //

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory //

CREATE PROCEDURE get_warehouse_product_inventory (IN p_warehouse_id INT)
BEGIN
    SELECT
        p.Name             AS ProductName,
        pi.WarehouseAmount AS Count
    FROM ProductInventory AS pi
    JOIN Products        AS p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = p_warehouse_id;
END //

DELIMITER ;
