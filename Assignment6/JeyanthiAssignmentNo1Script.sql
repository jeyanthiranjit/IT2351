-- create a procedure to understand about function in MySQL
-- Created by Jeyanthi Meenakshisundaram, 10/09/2021, Fall 2021
-- ***********************************************************
use jeyanthi_guitar_shop;
DROP PROCEDURE IF EXISTS ProductCount;

DELIMITER //

CREATE PROCEDURE ProductCount()
BEGIN 
	 DECLARE PRODUCT_COUNT_var DECIMAL(9,2);
     
     select count(product_id) into PRODUCT_COUNT_var
     from products;
     
if PRODUCT_COUNT_var >= 18 then
    SELECT 'The number of products is Greater than or equal to 18' AS message;
else
    SELECT 'The number of products is less than 18' AS message;
  end if;
END//
DELIMITER ;

call  ProductCount();