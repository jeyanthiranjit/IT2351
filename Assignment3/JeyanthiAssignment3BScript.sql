-- query that shows the following fields: count of products and the maximum product item price 
-- Created by Jeyanthi on 09/15/2021 , Fall 2021

select count(products.product_id) as 'Count of Products', max(item_price) as 'Maximum Product Price' from order_items
Join products on  order_items.product_id = products.product_id ;





