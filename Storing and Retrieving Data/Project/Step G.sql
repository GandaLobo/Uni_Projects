/*Step G*/

use pc_xuta;

/*1st query*/

select* from customer;

select * from invoice_detail;

select concat(c.customer_first_name, ' ', c.customer_last_name) as CustomerName, 
       inv.invoice_date as PurchaseDate, p.product_name as ProductName
from customer as c, invoice as inv, product as p, invoice_detail as ind
where c.customer_id=inv.customer_id and inv.invoice_id=ind.invoice_id and ind.product_id=p.product_id and (inv.invoice_date between '2018-07-01' and '2019-07-30')
order by PurchaseDate ;


/*2nd query*/

select concat(c.customer_first_name, ' ', c.customer_last_name) as CustomerName, sum(inv.payment_amount) as AmoutOfPurchases
from customer c , invoice inv
where c.customer_id=inv.customer_id
group by CustomerName
order by AmoutOfPurchases desc limit 3 ;

/*3rd query*/

select  
	concat(min(inv.invoice_date), '/', max(inv.invoice_date)) as PeriodOfSales,
	round(sum(inv.payment_amount),2) as TotalSales, 
	round((sum(inv.payment_amount))/TIMESTAMPDIFF(year,min(inv.invoice_date),max(inv.invoice_date)),2) as YearlyAverage,
	round((sum(inv.payment_amount))/TIMESTAMPDIFF(month,min(inv.invoice_date),max(inv.invoice_date)),2) as MonthlyAverage
from invoice as inv; 

/*4th query*/

select c.customer_adress as GeographicalLocation, sum(inv.payment_amount) as TotalSales
from customer c , invoice inv
where c.customer_id=inv.customer_id
group by GeographicalLocation; 
