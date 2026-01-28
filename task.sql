USE ShopDB; 

-- Create your stored procedure here
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN target_warehouse_id INT)
BEGIN
    SELECT
        p.Name,
        i.WarehouseAmount
    FROM
        ProductInventory i
    JOIN
        Products p ON i.ProductID = p.ID
    WHERE
        i.WarehouseID = target_warehouse_id;
END //
DELIMITER ;