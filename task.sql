USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT Products.Name as product_name, ProductInventory.WarehouseAmount as amount
    FROM ProductInventory
    JOIN Products
    ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;