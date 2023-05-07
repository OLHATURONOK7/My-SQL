select*from employees where city = 'Redmond';
SELECT product_code, product_name, category FROM products WHERE category <> 'Beverages';
select*from products where standard_cost >12.0000;
select ship_city, ship_address, shipping_fee from orders where shipping_fee between 20.0000 and 78.1223;
select*from products where minimum_reorder_quantity is not Null;
select*from products where minimum_reorder_quantity <10.0000;
select first_name, last_name, city from employees where city like '%nd';
select first_name, last_name, city from customers where city like '%nd' and not 'Redmond'; 
SELECT * FROM customers WHERE job_title not like '%Manager%';
SELECT * FROM customers WHERE (first_name LIKE 'J%' OR last_name LIKE '%o%') AND job_title like '%Manager%';
SELECT * FROM products WHERE supplier_ids in (4, 6, 7);
select first_name, last_name, city from employees where city = 'Redmond' order by first_name desc; 
SELECT * FROM products ORDER BY standard_cost ASC;
SELECT * FROM products ORDER BY standard_cost ASC, list_price DESC;
select distinct job_title from customers;
SELECT DISTINCT category FROM products ORDER BY category DESC;
SELECT first_name AS Imie_Pracownika, last_name AS Nazwisko_Pracownika, city AS Miasto FROM employees WHERE city = 'Seattle';
SELECT ship_city AS Miasto, ship_address AS Adres_dostawy, shipping_fee AS Oplata_za_przewoz FROM orders WHERE shipping_fee BETWEEN 19.1256 AND 78.1999;
select count(*) as liczba_zamowien from orders;
select count(payment_type) FROM orders WHERE payment_type = 'Credit Card';
SELECT COUNT(*) AS Liczba_zamowien FROM orders WHERE paid_date is null;
select max(shipping_fee) from orders;
SELECT MIN(standart_cost) FROM products WHERE supplier_id = 1;
select avg(shipping_fee) from orders where paid_date >0;
select sum(quantity) from order_details where product_id  = 43;
select min(standart_cost), category from products group by category;
select count(job_title), job_title from customers group by job_title;
select * from products join suppliers on products.supplier_ids=suppliers.id;
Select product_name, company from products inner JOIN suppliers
 on products.supplier_ids = suppliers.id order by company ASC; 
select first_name, last_name, address, city, country_region
from customers inner 
join orders
on customers.id = orders.customer_id
where payment_type is null;
select * from orders
left join shippers
on orders.shipper_id = shippers.id;
select  customers.company, orders.order_date, orders.shipped_date from customers 
left join orders on customers.id = orders.customer_id ;
select invoices.invoice_date AS 'Data faktury' , orders.paid_date AS 'Data platności' from invoices
left join orders on orders.id = invoices.order_id;
select invoices.invoice_date AS 'Data faktury' , orders.paid_date AS 'Data platności' from invoices
left join orders on orders.id = invoices.order_id;
select  customers.company, orders.order_date, orders.shipped_date from customers 
right join orders on customers.id = orders.customer_id ;
select orders.payment_type AS 'Forma pałatności', orders.paid_date AS 'Data platności' , invoices.invoice_date AS 'Data faktury'  from invoices
right join orders on orders.id = invoices.order_id 
where invoices.invoice_date IS NULL;

select ivoices.invoice_date as 'Data faktury', orders.paid_date as 'Data platnosci'
from invoices
left join orders
on invoices.order_id=orders.id; 

select orders.order_date, employees.last_name, employees.job_title
from orders right join employees
on orders.employee_id = employees.id;

select customers.company, orders.order_date, orders.shipped_date
from customers right join orders 
on customers.id = orders.customer_id;

select orders.payment_type as 'Forma platnosci', orders.paid_date as 'Data platnostci', 
invoices.invoice_date as 'Data factury' 
from invoices right join orders
on invoices.order_id = orders.id
where invoices.invoice_date is null;








