USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
   IN warehouseID INT
)
BEGIN
   SELECT
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount AS ProductAmount
    FROM
        Products
    JOIN
        ProductInventory
    ON
        Products.ID = ProductInventory.ProductID
    WHERE
        ProductInventory.WarehouseID = warehouseID;

END //
DELIMITER ;