DROP DATABASE IF EXISTS ShopDB;

DELIMITER //
	CREATE PROCEDURE get_warehouse_product_inventory(
		IN ID INT
	)
		BEGIN
			SELECT p.Name, pi.WarehouseAmount
			FROM ProductInventory pi
			INNER JOIN Warehouses w ON pi.WarehouseID = w.ID
			INNER JOIN Products p ON pi.ProductID = p.ID
			WHERE w.ID = ID;
		END //
DELIMITER ;
