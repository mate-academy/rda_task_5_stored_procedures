USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT ShopDB.Products.Name, ShopDB.ProductInventory.WarehouseAmount  
    FROM ShopDB.Products
    JOIN ShopDB.ProductInventory
    ON ShopDB.Products.ID = ShopDB.ProductInventory.ProductID
    WHERE ShopDB.ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;