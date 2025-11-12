USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WareHouseID INT
)
BEGIN
    SELECT p.Name Name, pi.WarehouseAmount Amount
    FROM ProductInventory pi
    JOIN Products p
    ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = WareHouseID;
END //
DELIMITER ;

