USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
  IN Warehouse_ID varchar(50)
)
BEGIN
  SELECT Products.Name, ProductInventory.WarehouseAmount 
  FROM ProductInventory 
  JOIN Products on Products.ID = ProductInventory.ProductID
  WHERE ProductInventory.WarehouseID = Warehouse_ID;
END //
DELIMITER ;