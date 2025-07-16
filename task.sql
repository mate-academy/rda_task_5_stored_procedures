USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN product_id INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE Products.ID = product_id;
END //

DELIMITER ;