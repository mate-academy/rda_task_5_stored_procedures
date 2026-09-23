USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory (
    IN Warehouse_ID INT
)
BEGIN
    SELECT p.Name, pi.WarehouseAmount
    FROM ProductInventory as pi
    INNER JOIN Products as p
    on pi.ProductID = p.id
    WHERE pi.WarehouseID = Warehouse_ID;
END //
DELIMITER ;
