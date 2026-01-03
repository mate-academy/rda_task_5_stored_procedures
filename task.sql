USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT Products.Name AS product_name, ProductInventory.WarehouseAmount AS product_amount
    FROM ProductInventory
    JOIN Products ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;

