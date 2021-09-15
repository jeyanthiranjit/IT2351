-- query to select category name, number of products and orders from the guitar shop database.
-- Created by Jeyanthi on 09/15/2021, Fall 2021

Select categories.category_name as 'category_name', product_name, 
sum(order_items.quantity)  as 'sum(quantity)' from products
join order_items on products.product_id = order_items.product_id
join categories on products.category_id = categories.category_id
group by categories.category_name, product_name with rollup
order by sum(quantity) ASC;