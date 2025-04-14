USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT
        p.Name,
        pi.WarehouseAmount
    FROM ProductInventory pi
             JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = WarehouseID;
END //

DELIMITER ;

