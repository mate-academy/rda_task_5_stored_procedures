USE ShopDB;
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
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
    WHERE w.ID = warehouse_id;
END //
DELIMITER ;