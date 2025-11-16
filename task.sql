USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseId INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM Products
    INNER JOIN ProductInventory
        ON ProductInventory.ProductID = Products.ProductId
    WHERE ProductInventory.Warehouse_ID = WarehouseId;
END //

DELIMITER ;
