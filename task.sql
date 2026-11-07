USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
IN warehouse_id INT
)
BEGIN
SELECT Products.name, ProductInventory.WarehouseAmount
FROM Products
JOIN ProductInventory
ON Products.ID = ProductInventory.ProductID
WHERE ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;

