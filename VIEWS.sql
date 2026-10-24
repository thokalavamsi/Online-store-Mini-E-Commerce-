create view customer_orders as
select c.customer_id,c.name as customer_name,o.order_id,o.order_date,o.total_amount,o.status
from customers c inner join orders o
on c.customer_id = o.customer_id;
select * from customer_orders;

create view product_category_details as
select p.product_id,p.product_name,p.price,p.stock_quantity,c.category_name,p.added_date
from products p inner join categories c
on p.category_id = c.category_id;
select * from product_category_details;

create view order_item_details as
select oi.order_item_id,oi.order_id,p.product_name,oi.quantity,oi.price,oi.subtotal
from order_items oi inner join products p
on oi.product_id = p.product_id;
select * from order_item_details;

create view customer_total_spending as
select c.customer_id,c.name as customer_name,sum(o.total_amount) as total_spending
from customers c left join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.name;
select * from customer_total_spending;

create view best_selling_products as
select p.product_id,p.product_name,sum(oi.quantity) as total_quantity_sold
from products p inner join order_items oi
on p.product_id = oi.product_id
group by p.product_id, p.product_name;
select * from best_selling_products order by total_quantity_sold desc;