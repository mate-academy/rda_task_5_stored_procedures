USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN FilterID INT
)
BEGIN
    SELECT Products.Name, WarehouseAmount FROM ProductInventory
    INNER JOIN Products
        ON Products.ID = ProductInventory.ProductID
    WHERE WarehouseID=FilterID;
END //
DELIMITER ;
