set sql_safe_updates = 0;
update Products set price = 60000.00 where product_id = 101;
update Customers set email = 'rahul.new@gmail.com' where customer_id = 1;
update Products set category_id = 2 where product_id = 103;
delete from Order_Items where order_id in (select order_id from Orders where status = 'Cancelled');
delete from Orders where status = 'Cancelled';
delete from Customers where customer_id NOT IN (select customer_id from Orders Where customer_id IS NOT NULL);