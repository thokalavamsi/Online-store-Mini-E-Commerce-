select name from customers  where customer_id not in (select customer_id from orders);
select product_name from products where product_id not in (select product_id from order_items);
select product_name from products where price>(select avg(price) from products); 
select customers;
select * from Orders where total_amount > (select avg(total_amount) from Orders);