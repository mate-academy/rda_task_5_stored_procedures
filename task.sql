USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN _WarehouseID varchar(10)
)
BEGIN
SELECT b.name, a.WarehouseAmount
FROM ProductInventory AS a
LEFT JOIN Products AS b ON a.ProductID = b.ID
WHERE a.WarehouseID=_WarehouseID;
END //
DELIMITER ;
