USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseID INT
)
BEGIN
	SELECT
		p.Name as ProductName,
        pi.WarehouseAmount
	FROM
		ProductInventory pi
	JOIN 
		Products p ON pi.ProductID = p.id
	WHERE
		pi.WarehouseID = WarehouseID;
END //
DELIMITER ;
