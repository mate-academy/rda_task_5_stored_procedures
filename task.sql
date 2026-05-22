DROP DATABASE IF EXISTS ShopDB;
USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount AS Amount
        FROM ProductInventory
        INNER JOIN Products
            ON ProductInventory.ProductID = Products.ID
        WHERE ProductInventory.WarehouseID = warehouse_id;
END //

DELIMITER ;
-- Create your stored procedure here
