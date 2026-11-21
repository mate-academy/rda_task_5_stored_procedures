USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
SELECT
    p.Name AS ProductName,
    pi.WarehouseAmount AS ProductAmount
FROM ProductInventory pi
JOIN Products p ON p.ID = pi.ProductID
WHERE pi.WarehouseID = warehouse_id;