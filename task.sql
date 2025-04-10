USE ShopDB; 

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT 
        p.ProductName, 
        p.WarehouseAmount
    FROM ProductInventory p
    JOIN Warehouses w ON p.WarehouseID = w.ID
    WHERE w.ID = warehouse_id;
END $$

DELIMITER ;
