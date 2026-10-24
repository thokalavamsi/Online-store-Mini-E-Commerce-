INSERT INTO Customers VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876500001', 'Hyderabad', '2024-01-15'),
(2, 'Priya Reddy', 'priya@gmail.com', '9876500002', 'Guntur', '2024-03-20'),
(3, 'Arjun Kumar', 'arjun@gmail.com', '9876500003', 'Hyderabad', '2024-06-10'),
(4, 'Sneha Patel', 'sneha@gmail.com', '9876500004', 'Vijayawada', '2024-08-05'),
(5, 'Kiran Rao', 'kiran@gmail.com', '9876500005', 'Chennai', '2024-09-12'),
(6, 'Anjali Verma', 'anjali@gmail.com', '9876500006', 'Hyderabad', '2025-01-18'),
(7, 'Rohit Das', 'rohit@gmail.com', '9876500007', 'Bangalore', '2025-02-14'),
(8, 'Divya Singh', 'divya@gmail.com', '9876500008', 'Guntur', '2025-04-22'),
(9, 'Manoj Kumar', 'manoj@gmail.com', '9876500009', 'Vijayawada', '2025-06-11'),
(10, 'Pooja Mehta', 'pooja@gmail.com', '9876500010', 'Hyderabad', '2025-08-19');

INSERT INTO Categories VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Clothing', 'Clothes and fashion products'),
(3, 'Books', 'Educational and general books'),
(4, 'Home Appliances', 'Appliances for home use'),
(5, 'Sports', 'Sports equipment and accessories'),
(6, 'Furniture', 'Home and office furniture'),
(7, 'Beauty', 'Beauty and personal care products'),
(8, 'Toys', 'Toys and games'),
(9, 'Groceries', 'Daily food and household essentials'),
(10, 'Footwear', 'Shoes and sandals');

INSERT INTO Products VALUES
(101, 'Laptop', 55000.00, 15, 1, '2025-01-10'),
(102, 'Smartphone', 18000.00, 25, 1, '2025-02-15'),
(103, 'Headphones', 1500.00, 40, 1, '2024-11-20'),
(104, 'T-Shirt', 600.00, 50, 2, '2024-08-12'),
(105, 'Jeans', 1200.00, 30, 2, '2025-03-05'),
(106, 'SQL Programming Book', 850.00, 20, 3, '2024-06-18'),
(107, 'Refrigerator', 28000.00, 10, 4, '2025-05-21'),
(108, 'Washing Machine', 22000.00, 12, 4, '2025-07-14'),
(109, 'Cricket Bat', 1800.00, 18, 5, '2024-12-01'),
(110, 'Bluetooth Speaker', 2500.00, 22, 1, '2026-01-08');

INSERT INTO Orders VALUES
(1001, 1, '2025-01-20', 56500.00, 'Delivered'),
(1002, 2, '2025-02-18', 1200.00, 'Delivered'),
(1003, 3, '2025-03-10', 18000.00, 'Delivered'),
(1004, 1, '2025-04-05', 28000.00, 'Delivered'),
(1005, 4, '2025-05-12', 2400.00, 'Cancelled'),
(1006, 6, '2025-06-22', 22000.00, 'Delivered'),
(1007, 5, '2025-07-08', 1800.00, 'Shipped'),
(1008, 7, '2025-08-16', 2500.00, 'Delivered'),
(1009, 2, '2025-09-03', 55000.00, 'Delivered'),
(1010, 3, '2025-10-11', 850.00, 'Pending');

INSERT INTO Order_Items values
(1, 1001, 101, 1, 55000.00, 55000.00),
(2, 1001, 103, 1, 1500.00, 1500.00),
(3, 1002, 105, 1, 1200.00, 1200.00),
(4, 1003, 102, 1, 18000.00, 18000.00),
(5, 1004, 107, 1, 28000.00, 28000.00),
(6, 1005, 104, 1, 600.00, 600.00),
(7, 1005, 109, 1, 1800.00, 1800.00),
(8, 1006, 108, 1, 22000.00, 22000.00),
(9, 1007, 109, 1, 1800.00, 1800.00),
(10, 1008, 110, 1, 2500.00, 2500.00);

select * from customers;
select * from categories;
select * from products;
select * from orders;
select * from order_items;