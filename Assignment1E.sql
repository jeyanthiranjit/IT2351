-- Created by Jeyanthi, on 09/02/2021 , Fall 2021
-- Created a query to show AND, OR in the query using the om database
-- SELECT * from om.customers;
SELECT customers.customer_first_name, customers.customer_address, customers.customer_phone FROM om.customers WHERE om.customers.customer_id = 10 OR om.customers.customer_id = 20;