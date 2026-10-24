# Online-store-Mini-E-Commerce-
Online Store (Mini E-Commerce) 
Tables 
● Customers 
CREATE TABLE Customers ( 
customer_id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
email VARCHAR(100) UNIQUE, 
phone VARCHAR(15), 
city VARCHAR(255), 
registration_date DATE 
); 
● Categories 
CREATE TABLE Categories ( 
category_id INT PRIMARY KEY, 
category_name VARCHAR(100) NOT NULL, 
description VARCHAR(255) 
); 
● Products 
CREATE TABLE Products ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(100) NOT NULL, 
price DECIMAL(10,2), 
stock_quantity INT, 
category_id INT, 
added_date DATE, 
FOREIGN KEY (category_id) REFERENCES Categories(category_id) 
); 
● Orders 
CREATE TABLE Orders ( 
order_id INT PRIMARY KEY, 
customer_id INT, 
order_date DATE, 
total_amount DECIMAL(10,2), 
status VARCHAR(20), 
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
); 
● Order_Items 
CREATE TABLE Order_Items ( 
order_item_id INT PRIMARY KEY, 
order_id INT, 
product_id INT, 
quantity INT, 
price DECIMAL(10,2), 
subtotal DECIMAL(10,2), 
FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
FOREIGN KEY (product_id) REFERENCES Products(product_id) 
); 
Basic Queries 
1. Insert sample data into all tables. 
2. Display products with price greater than 1000. 
3. Show all customers from Hyderabad. 
4. List products belonging to Electronics category. 
5. Display products added after 2024. 
Joins 
1. Show customer name with their orders. 
2. Display product name with order quantity. 
3. Show order details with customer information. 
4. List products with category name. 
5. Show customers with products they purchased. 
Aggregate Functions 
1. Count total number of products. 
2. Find average product price. 
3. Calculate total sales amount. 
4. Count total orders placed. 
5. Find highest priced product. 
Subqueries 
1. Find customers who never placed orders. 
2. Find products never ordered. 
3. Show products with price greater than average price. 
4. Find customers who spent more than average spending. 
5. Show orders above average total amount. 
Updates & Deletes 
1. Update product price. 
2. Change customer email. 
3. Update product category. 
4. Delete cancelled orders. 
5. Delete customers with no orders. 
Views 
1. Create a view to display customer orders 
2. Create a view for product details with category 
3. Create a view showing order item details 
4. Create a view to display total spending by each customer 
5. Create a view showing best-selling products 
Stored Procedures 
1. Create a stored procedure to insert a new customer 
The procedure should accept name, email, phone, address, and 
registration_date as input. 
2. Create a stored procedure to update product price 
Pass product_id and new_price as parameters. 
3. Create a stored procedure to display all orders of a customer 
Pass customer_id and return all orders placed by that customer. 
4. Create a stored procedure to calculate total sales 
The procedure should return the total sales amount from Orders table. 
5. Create a stored procedure to list products in a category 
Pass category_id and display all products belonging to that category. 
Reports / Analysis 
1. Top 5 best selling products. 
2. Most frequent customers. 
3. Monthly sales report. 
4. Category generating highest revenue. 
5. Customer spending analysis. 
