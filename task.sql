USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
create procedure get_warehouse_product_inventory(
    IN IdFilter int
)
BEGIN
    select p.Name, pi.WarehouseAmount from ProductInventory pi 
    join Products p on pi.ProductID = p.id
    where pi.WarehouseID = IdFilter;
END //
DELIMITER ;