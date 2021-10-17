-- Query to show how can we turn on the event scheduler using sql statement 
-- Jeyanthi Meenakshisundaram, 10/17/2021, Fall 2021
-- ********************************************************************************
SHOW VARIABLES LIKE 'event_scheduler';

SET GLOBAL event_scheduler = ON;

DROP EVENT IF EXISTS one_time_insert;

DELIMITER //

CREATE EVENT one_time_insert
ON SCHEDULE AT NOW()  + interval 1 month
DO BEGIN
  insert into categories values(7,'Violine');
END//

DELIMITER ;
SHOW EVENTS IN jeyanthi_guitar_shop;
Alter event one_time_insert enable;

drop event one_time_insert;