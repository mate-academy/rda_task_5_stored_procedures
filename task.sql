USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN param_warehouse_id INT)
BEGIN
    SELECT
        Products.Name,
        ProductInventory.WarehouseAmount
    FROM Products
    JOIN ProductInventory ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = param_warehouse_id;
END //

DELIMITER ;
