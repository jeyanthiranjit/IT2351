-- Query to show subquery without using the join for the below question - What products are sold that are above the average item price.
-- Edited by Jeyanthi 09/24/2021, FAll 2021
/*  
Select product_name, order_items.item_price from products
 inner join order_items on
 products.product_id = order_items.product_id
  where item_price > (select avg(item_price) from order_items) ;
  */  
  Select product_name, list_price as item_price  from products
where product_id in (select product_id from order_items 
   where item_price > (select avg(item_price) from order_items)) ;

