USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT 
        P.Name AS ProductName,
        PI.WarehouseAmount AS Amount
    FROM 
        ProductInventory PI
    JOIN 
        Products P ON PI.ProductID = P.ID
    WHERE 
        PI.WarehouseID = warehouse_id;
END //

DELIMITER ;
