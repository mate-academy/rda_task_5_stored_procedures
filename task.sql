USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseID INT
)
BEGIN
    SELECT P.Name, I.WarehouseAmount
    FROM ProductInventory AS I
    JOIN Products AS P ON I.ProductID = P.ID
    WHERE I.WarehouseID = WarehouseID;
END //

DELIMITER ;