delimiter $$
create procedure insert_customer(in p_name varchar(100),in p_email varchar(100),in p_phone varchar(15),in p_city varchar(255),in p_registration_date date)
begin
    insert into customers(name, email, phone, city, registration_date)
    values(p_name, p_email, p_phone, p_city, p_registration_date);
end $$
delimiter ;
call insert_customer('ravi kumar','ravi@gmail.com','9876500011','hyderabad','2026-01-15');

delimiter $$
create procedure update_product_price(in p_product_id int,in p_new_price decimal(10,2))
begin
    update products set price = p_new_price
    where product_id = p_product_id;
end $$
delimiter ;
call update_product_price(101, 60000.00);

delimiter $$
create procedure get_customer_orders(in p_customer_id int)
begin
    select * from orders where customer_id = p_customer_id;
end $$
delimiter ;
call get_customer_orders(1);

delimiter $$
create procedure calculate_total_sales()
begin
    select sum(total_amount) as total_sales from orders;
end $$
delimiter ;
call calculate_total_sales();

delimiter $$
create procedure get_products_by_category(in p_category_id int)
begin
    select * from products where category_id = p_category_id;
end $$
delimiter ;
call get_products_by_category(1);