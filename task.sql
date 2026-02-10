CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

DELIMITER $$

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory $$
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT p.Name, pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = warehouse_id;
END $$

DELIMITER ;
