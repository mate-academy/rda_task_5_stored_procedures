USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
   IN item_ID INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount FROM Products
    JOIN ProductInventory on ProductInventory.ProductID = Products.id
    WHERE ProductInventory.WarehouseID = item_ID;
END //
DELIMITER ;

