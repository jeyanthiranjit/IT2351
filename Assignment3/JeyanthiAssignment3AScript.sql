-- Query to select the number of orders and total ship amount from the orders table
-- Created by Jeyanthi, 09/15/2021, Fall 2021

select count(*) as 'Number of Orders', sum(ship_amount) as 'Ship Value' from orders;
