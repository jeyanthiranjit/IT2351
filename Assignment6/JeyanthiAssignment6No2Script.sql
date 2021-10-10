-- create a procedure to understand about function in MySQL for Assignment 6
-- Created by Jeyanthi Meenakshisundaram, 10/10/2021, Fall 2021
-- ***********************************************************
use jeyanthi_guitar_shop;

DELIMITER //
DROP PROCEDURE IF EXISTS InsertCategory;

CREATE PROCEDURE  InsertCategory()
Begin
	DECLARE duplicate_entry_for_key tinyint DEFAULT FALSE;

    DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_entry_for_key = TRUE;
      
	INSERT INTO categories VALUES (5, 'Winds');  
  IF duplicate_entry_for_key = TRUE THEN
    SELECT 'Row was not inserted - duplicate key.' AS message; 
	else 
    select "1 Row was inserted." as message;
  END IF;
END//
DELIMITER ;
CALL InsertCategory();

select * from categories;