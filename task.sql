DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
  SELECT 
    p.Name AS product_name,
    pi.WarehouseAmount AS amount
  FROM ProductInventory pi
  JOIN Products p ON pi.ProductID = p.ID
  WHERE pi.WarehouseID = warehouse_id;
END //

DELIMITER ;
