USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN IdFilters INT
)
BEGIN
    SELECT Products.Name AS Name, ProductInventory.WarehouseAmount AS Count 
    FROM Products
    JOIN ProductInventory
    ON Products.ID = ProductInventory.ProductID
    WHERE Products.ID=IdFilters;
END //
DELIMITER ;