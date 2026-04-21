USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_WarehouseID INT
)
BEGIN
    SELECT 
        p.Name,
        pi.WarehouseAmount
    FROM Products p
    JOIN ProductInventory pi ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = p_WarehouseID;
END //
DELIMITER ;