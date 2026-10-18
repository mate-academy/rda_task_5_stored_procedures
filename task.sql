USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN WH_ID INT
)
BEGIN
  SELECT
  Products.Name,
  ProductInventory.WarehouseAmount
  FROM ProductInventory
  JOIN Products ON ProductInventory.ProductID = Products.ID
  WHERE ProductInventory.WarehouseID = WH_ID;
END //
DELIMITER ;
