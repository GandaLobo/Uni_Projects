use pc_xuta ;

Insert into `CUSTOMER` (`CUSTOMER_FIRST_NAME`, `CUSTOMER_LAST_NAME`, `CUSTOMER_GENDER`, `CUSTOMER_EMAIL`, `CUSTOMER_ADRESS`, `CUSTOMER_ALIAS`) values
('Francisco', 'Hermenegildo', 'Male','francisco.hermenegildo@gmail.com', 'Lisbon','FHermenegildo'),
('Ikram', 'Bouziri', 'Female', 'ikram.bouziri@gmail.com', 'Lisbon', 'IBouziri'), 
('Gil', 'Gonçalves', 'Male', 'gil.Gonçalves@gmail.com', 'Porto', 'GGonçalves'),
('Luis', 'ALmeida', 'Male', 'luis.almeida@gmail.com', 'Lisbon', 'LAlmeida'),
('Antonio', 'Carvalho', 'Male', 'Antonio.Carvalho@gmail.com', 'Braga', 'ACarvalho');

Insert into `SUPPLIER` (`SUPPLIER_NAME` ,`SUPPLIER_ADRESS`) values
('HP', 'California USA'),
('ASUS','Taipei Taiwan'),
('DELL','Texas USA'),
('Bose','Massachusetts USA');

Insert into `PRODUCT` (`PRODUCT_NAME` , `PRODUCT_TYPE`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_RATING`, `SUPPLIER_ID`) values
('HP 15-dw1036np Notebook','Laptop', 949 ,100 , 4,1),
('ASUS VZ239HE Monitor','Monitor', 109 ,50 ,5,2),
('HP DeskJet 3762 Multifunction Printer','printer', 146 ,65 ,3,1),
('BOSE QC35 II Bluetooth Headphones','headphones', 249 ,47 ,4,4);

Insert into `INVOICE` (`CUSTOMER_ID`,`INVOICE_DATE`, `PAYMENT_METHOD`) values
(5, '2018-01-05','credit card'),
(4,'2018-02-10','paypal'),
(1,'2019-02-23','credit card'),
(3, '2019-03-12','debit card'),
(2,'2020-04-10','paypal'),
(2,'2020-10-24','credit card'),
(1, '2018-12-31','paypal'),
(3,'2018-03-28','paypal'),
(3,'2018-07-11','credit card'),
(2, '2018-10-25','debit card'),
(4,'2018-01-23','debit card'),
(5,'2018-11-02','paypal'),
(4, '2019-10-27','credit card'),
(1,'2019-04-19','credit card'),
(3,'2019-07-09','paypal'),
(2, '2019-05-03','debit card'),
(5,'2019-10-10','debit card'),
(5,'2019-12-24','credit card'),
(5, '2020-09-08','credit card'),
(1,'2020-07-30','credit card'),
(1,'2020-06-18','credit card'),
(3, '2020-09-11','debit card'),
(2,'2020-10-28','paypal'),
(4,'2020-05-01','debit card'),
(4, '2018-01-24','debit card'),
(4,'2018-05-01','paypal'),
(3,'2019-02-03','paypal'),
(2, '2019-12-04','debit card'),
(5,'2020-09-29','paypal'),
(1,'2020-10-01','credit card');


Insert into `INVOICE_DETAIL` ( `INVOICE_ID`, `PRODUCT_ID`, `PRODUCT_QUANTITY`) values 
(1,4,1),
(1,3,1),
(2,1,2),
(3,2,1),
(3,4,1),
(4,4,2),
(5,1,1),
(5,3,1),
(6,1,1),
(7,4,1),
(7,3,1),
(8,2,2),
(9,1,3),
(9,2,1),
(9,3,2),
(10,2,1),
(11,4,2),
(12,2,1),
(13,4,3),
(13,3,1),
(14,1,2),
(15,4,1),
(15,3,3),
(16,1,1),
(17,2,1),
(18,3,2),
(19,1,1),
(20,3,1),
(20,2,2),
(20,4,1),
(21,1,1),
(22,2,2),
(23,3,1),
(23,4,2),
(24,1,1),
(25,2,1),
(26,4,2),
(27,2,1),
(27,1,3),
(28,2,1),
(28,1,2),
(28,3,1),
(29,1,4),
(30,2,1);


Insert into `SHIPMENT` ( `SHIPMENT_PRICE`, `SHIPMENT_BRAND` , `SHIPMENT_TYPE`,`SHIPMENT_REGION`) values
(15,'DHL','Premium: 24 hours','International'),
(10,'DHL','Express: 2 to 3 days','Europe'),
(5,'DHL','Normal: 5 and 10 days','Europe'),
(15,'UPS','Premium: 24 hours','International'),
(10,'UPS','Express: 2 to 3 days','Europe'),
(5,'UPS','Normal: 5 and 10 days','Europe'),
(15,'FEDEX','Premium: 24 hours','International'),
(10,'FEDEX','Express: 2 to 3 days','Europe'),
(5,'FEDEX','Normal: 5 and 10 days','Europe'),
(10,'MRW','Express: 2 to 3 days','National'),
(5,'MRW','Normal: 5 and 10 days','National');

Insert into `INVOICE_SHIPMENT`(`SHIPMENT_ID`,`INVOICE_ID`,`SHIPMENT_STATUS`, `SHIPMENT_DATE`) values
(1,1,'delivered','2018-01-06'),
(3,2,'delivered','2018-02-16'),
(10,3,'delivered','2019-02-25'),
(5,4,'delivered','2019-03-15'),
(6,5,'delivered','2020-04-15'),
(7,6,'delivered','2020-10-25'),
(1,7,'delivered','2019-01-01'),
(11,8,'delivered','2018-04-01'),
(10,9,'delivered','2018-07-14'),
(2,10,'delivered','2018-10-27'),
(1,11,'delivered','2018-01-24'),
(5,12,'delivered','2018-11-04'),
(4,13,'delivered','2019-10-28'),
(2,14,'delivered','2019-04-22'),
(9,15,'delivered','2019-07-19'),
(3,16,'delivered','2019-05-10'),
(4,17,'delivered','2019-10-11'),
(7,18,'delivered','2019-12-25'),
(8,19,'delivered','2020-09-10'),
(10,20,'delivered','2020-08-01'),
(11,21,'delivered','2020-06-26'),
(1,22,'delivered','2020-09-12'),
(1,23,'delivered','2020-10-29'),
(2,24,'delivered','2020-05-04'),
(3,25,'delivered','2018-01-31'),
(4,26,'delivered','2018-05-02'),
(6,27,'delivered','2019-02-10'),
(5,28,'delivered','2019-12-06'),
(7,29,'delivered','2020-09-30'),
(8,30,'delivered','2020-10-04');


Update invoice as Inv set 
Payment_Amount= 
(select sum(ind.Product_Quantity*p.Product_Price) 
from Invoice_detail as ind , Product as p 
Where p.Product_ID=ind.Product_ID and ind.Invoice_ID=Inv.Invoice_ID)  +

(select sum(s.Shipment_Price) 
From Shipment as s ,Invoice_Shipment as ish 
where ish.Invoice_ID=Inv.Invoice_ID and ish.Shipment_ID=s.Shipment_ID);











