-- *************************************************************
-- This script to create a view using the guitar database named items_ordered that shows the item name, product name, 
-- item price and quantity for each item ordered. 
-- for IT2351 - Enterprise Database Systems,09/29/2021, Fall 2021 by Jeyanthi Meenakshisundaram
-- *************************************************************

use jeyanthi_guitar_shop;

create view items_ordered as
select categories.category_name, products.product_name, order_items.item_price, order_items.quantity
from order_items, categories, products where order_items.product_id in 
(select product_id from products where products.category_id in 
(select category_id from categories));
