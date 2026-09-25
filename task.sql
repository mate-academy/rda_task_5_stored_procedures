USE ShopDB;

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //

create procedure get_warehouse_product_inventory(in warehouse_id int)
begin
     select
         Products.Name,
         ProductInventory.WarehouseAmount
     from ProductInventory
     join Products
         on ProductInventory.ProductID = Products.ID
     where ProductInventory.WarehouseID = warehouse_id;
end //

DELIMITER ;


-- Create your stored procedure here
