USE ShopDB; 
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)

BEGIN 

    SELECT Products.Name, ProductInventory.WarehouseAmount 
    FROM Products
    -- SELECT WarehouseAmount FROM ProductInventory;
    JOIN ProductInventory ON Products.ID = ProductInventory.ProductID     WHERE ProductInventory.WarehouseID = WarehouseID
    ORDER BY WarehouseAmount;
    
END //
DELIMITER ;

