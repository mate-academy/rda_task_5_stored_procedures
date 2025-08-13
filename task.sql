DROP DATABASE ShopDB;

USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT p.Name AS product_name, pi.WarehouseAmount AS amount_in_warehouse
     FROM Products p
     INNER JOIN ProductInventory pi
     ON p.ID = pi.ProductID;
     WHERE pi.WarehouseID = warehouse_id
END //
DELIMITER ;