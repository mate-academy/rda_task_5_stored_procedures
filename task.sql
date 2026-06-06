USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id_param INT)
BEGIN
    SELECT p.Name, pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id_param;
END //

DELIMITER ;
