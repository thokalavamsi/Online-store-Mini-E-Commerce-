select customers.name,orders.order_id,orders.order_date,orders.total_amount,orders.status
from customers inner join orders
on customers.customer_id=orders.customer_id;

select products.product_name,order_items.quantity
from products cross join order_items
on products.product_id=order_items.product_id;

select customers.*,orders.*
from customers inner join orders
on customers.customer_id=orders.customer_id;

select Categories.category_name,products.product_name
from categories inner join products
on Categories.category_id=products.category_id;

SELECT C.name AS customer_name,P.product_name
FROM Customers C INNER JOIN Orders O INNER JOIN Order_Items OI INNER JOIN Products P
ON C.customer_id = O.customer_id and O.order_id = OI.order_id and OI.product_id = P.product_id;