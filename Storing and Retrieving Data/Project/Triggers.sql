
/*update stock trigger*/

delimiter $$
CREATE TRIGGER  StockUpdate
AFTER INSERT
   ON INVOICE_DETAIL FOR EACH ROW

BEGIN
	UPDATE product as p SET 
	p.product_stock = p.product_stock - new.product_quantity
	WHERE p.Product_ID = New.Product_ID;
END$$
delimiter ;


/*Price update trigger*/

DROP TABLE IF EXISTS PriceChanges;

CREATE TABLE PriceChanges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_Id INT,
    OldPRice INT,
    NewPrice INT,
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER after_price_update
AFTER UPDATE
ON product FOR EACH ROW
BEGIN
    IF OLD.product_price <> new.product_price THEN
        INSERT INTO PriceChanges(product_Id, OldPrice, NewPrice)
        VALUES(old.product_id, old.product_price, new.product_price);
    END IF;
END$$
