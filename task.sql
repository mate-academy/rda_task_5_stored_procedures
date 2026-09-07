DROP DATABASE IF EXISTS ShopDB;
USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WhareHouseID INT)
BEGIN
    SELECT p.NAME, WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE WarehouseID = WhareHouseID;
END //
DELIMITER ;
