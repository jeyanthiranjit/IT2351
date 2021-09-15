-- query to select category name, number of products and orders from the guitar shop database.alter
-- Created by Jeyanthi on 09/15/2021, Fall 2021

Select categories.category_name as 'category_name', count(*) as 'Number of Products', sum(order_items.quantity)  as 'Orders' from products
join order_items on products.product_id = order_items.product_id
join categories on products.category_id = categories.category_id
group by categories.category_name
order by Orders DESC;