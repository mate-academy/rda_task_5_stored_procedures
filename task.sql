DROP DATABASE ShopDB;

USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory (IN WarehouseID INT)
BEGIN
    SELECT p.Name as ProductName, pi.WarehouseAmount as Amount
    FROM Products as p JOIN ProductInventory as pi
		ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = WarehouseID;
END //
DELIMITER ;