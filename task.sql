USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_WarehouseID INT
)
BEGIN
    SELECT
        Products.Name,
        ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = p_WarehouseID;
END //

DELIMITER ;
