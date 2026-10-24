# Top 5 best-selling products
select p.product_id,p.product_name,sum(oi.quantity) as total_quantity_sold
from products p join order_items oi
on p.product_id = oi.product_id
join orders o
on oi.order_id = o.order_id
where o.status <> 'Cancelled'
group by p.product_id, p.product_name
order by total_quantity_sold desc
limit 5;

# Most frequent customers
select c.customer_id,c.name,count(o.order_id) as total_orders
from customers c join orders o
on c.customer_id = o.customer_id
where o.status <> 'Cancelled'
group by c.customer_id, c.name
order by total_orders desc;

# Monthly sales report
select date_format(order_date, '%Y-%m') as sales_month,sum(total_amount) as monthly_sales
from orders
where status <> 'Cancelled'
group by date_format(order_date, '%Y-%m')
order by sales_month;

# Category generating highest revenue. 
select c.category_name,sum(oi.quantity * oi.price) as total_revenue
from categories c join products p
on c.category_id = p.category_id
join order_items oi
on p.product_id = oi.product_id
join orders o
on oi.order_id = o.order_id
where o.status <> 'Cancelled'
group by c.category_id, c.category_name
order by total_revenue desc
limit 1;

# Customer spending analysis.
select c.customer_id,c.name,count(o.order_id) as total_orders,sum(o.total_amount) as total_spending,avg(o.total_amount) as average_order_amount
from customers c left join orders o
on c.customer_id = o.customer_id and o.status <> 'Cancelled'
group by c.customer_id, c.name
order by total_spending desc;