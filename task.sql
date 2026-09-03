USE ShopDB;

DELIMITER //

-- Create your stored procedure here
CREATE PROCEDURE get_warehouse_product_inventory (
    ID INT
)
BEGIN
    SELECT p.Name, pi.WarehouseAmount
    FROM Products AS p
    INNER JOIN ProductInventory AS pi ON (pi.ProductID = p.ID)
    WHERE pi.WarehouseID = ID;
END //

DELIMITER ;