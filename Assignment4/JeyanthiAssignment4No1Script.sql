-- Query to show subquery without using the join for the below commented code,
-- Edited by Jeyanthi 09/24/2021, FAll 2021
/*
SELECT DISTINCT category_name
FROM categories c JOIN products p
 ON c.category_id = p.category_id
ORDER BY category_name;  */
SELECT DISTINCT category_name
FROM categories c where category_id in 
(select category_id from products)
ORDER BY category_name;