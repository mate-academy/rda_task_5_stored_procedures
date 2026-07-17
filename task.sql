USE ShopDB;

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN w_id INT)
BEGIN
    SELECT Name, WarehouseAmount
    FROM Products
    INNER JOIN ProductInventory
    ON Products.ID = ProductInventory.ProductID
    WHERE WarehouseID = w_id;
END //

DELIMITER ;