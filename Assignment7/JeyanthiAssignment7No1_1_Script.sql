USE jeyanthi_guitar_shop;

SELECT * FROM customers;
DROP TABLE IF EXISTS customers_audit;

CREATE TABLE customers_audit
(
  customer_id           INT             NOT NULL,
  first_name         VARCHAR(50)     NOT NULL,
  last_name          varchar(50)    NOT NULL,
  action_type         VARCHAR(50)     NOT NULL,
  action_date         DATETIME        NOT NULL
);


DROP TRIGGER IF EXISTS customers_after_delete;

DELIMITER //

CREATE TRIGGER customers_after_delete
  AFTER DELETE ON customers
  FOR EACH ROW
BEGIN
    INSERT INTO customers_audit VALUES
    (OLD.customer_id, OLD.first_name, OLD.last_name, 
    'DELETED', NOW());
END//

DELIMITER ;

-- make sure that there is at least one record to delete
INSERT INTO customers VALUES 
(11, 'jeyanthi1983@gmail.com','12345@#$%','jeyanthi', 'Ranjit', 8, 8);
SELECT * FROM customers;

DELETE FROM customers WHERE customer_id = 11;
      
SELECT * FROM customers;

