USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN ID_Warehouse INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = ID_Warehouse;
END //

DELIMITER ;
