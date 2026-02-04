DROP DATABASE IF EXISTS ShopDB;
USE ShopDB;


DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_WarehouseID INT
)
BEGIN
    SELECT
    p.Name AS ProductName,
    pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = p_WarehouseID;
END//

DELIMITER ;