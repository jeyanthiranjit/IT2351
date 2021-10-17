-- Create a trigger named products_before_update that checks the new value for the list_price column of the 
-- products table. This trigger should raise an appropriate error if the UnitPrice is greater than 1200 or less than 100. 

USE jeyanthi_guitar_shop;
select * from products;
DROP TRIGGER IF EXISTS products_before_update;

DELIMITER //

CREATE TRIGGER products_before_update
  BEFORE UPDATE ON products
  FOR EACH ROW
BEGIN
DECLARE list_price_amount DECIMAL(9,2);
  
  SELECT list_price 
  INTO list_price_amount
  FROM products
  WHERE product_id = NEW.product_id;
  
  IF (list_price_amount < 100 || list_price_amount > 1200 )THEN
    SIGNAL SQLSTATE 'HY000'
      SET MESSAGE_TEXT = 'Item Price is below 100 or higher than 1200';
  END IF;
END//
DELIMITER ;

UPDATE products
SET list_price = 1300
WHERE product_id = 10;

SELECT product_id,  product_name, list_price , list_price_amount
FROM products WHERE product_id = 10;
