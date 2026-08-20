USE ShopDB; 

CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseId INT
)
BEGIN
    SELECT 
        pr.Name AS Product,
        pinv.WarehouseAmount
    FROM Warehouses AS w
    JOIN ProductInventory AS pinv
        ON pinv.WarehouseID = w.ID
    JOIN Products AS pr
        ON pr.ID = pinv.ProductID
    WHERE w.ID = WarehouseID
END