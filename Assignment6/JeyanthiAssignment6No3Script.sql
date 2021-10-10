-- create a procedure to understand about function in MySQL
-- Created by Jeyanthi Meenakshisundaram, 10/05/2021, Fall 2021
-- **********************************************************
use jeyanthi_guitar_shop;

DELIMITER //
DROP FUNCTION IF EXISTS new_price;
-- function that calculates balance due
DELIMITER //

CREATE FUNCTION new_price
(
   item_id_param INT
)
RETURNS DECIMAL(9,2)
DETERMINISTIC READS SQL DATA
BEGIN
  DECLARE new_price_var DECIMAL(9,2);
  
  SELECT item_price - discount_amount
  INTO new_price_var
  FROM order_items
  where item_id = item_id_param;
  
  RETURN new_price_var;
  END//

DELIMITER ;

SELECT item_id, item_price, discount_amount,
       new_price(item_id) AS new_price
FROM order_items
WHERE item_id = 9;