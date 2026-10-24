select count(*) as count_of_products from products;
select avg(price) as average_price from products;
select sum(total_amount) as total_sales_amt from orders;
select count(*) as total_orders from orders;
select product_name from products where price = (select max(price) from products);