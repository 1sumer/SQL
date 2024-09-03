-- Active: 1685713185905@@localhost@3306@retail_store

----------------------------- Creating ----------------------------------
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    quantity_received INT,
    date_received DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

----------------------------- Inserting ----------------------------------

INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES
(1, 'Laptop', 'Electronics', 800.00, 50),
(2, 'Phone', 'Electronics', 500.00, 100),
(3, 'T-shirt', 'Clothing', 20.00, 200),
(4, 'Jeans', 'Clothing', 40.00, 150),
(5, 'Headphones', 'Electronics', 30.00, 300),
(6, 'Smartwatch', 'Electronics', 150.00, 120),
(7, 'Tablet', 'Electronics', 250.00, 75),
(8, 'Monitor', 'Electronics', 200.00, 80),
(9, 'Keyboard', 'Electronics', 25.00, 400),
(10, 'Mouse', 'Electronics', 15.00, 450),
(11, 'Shoes', 'Clothing', 60.00, 180),
(12, 'Jacket', 'Clothing', 120.00, 90),
(13, 'Hat', 'Clothing', 15.00, 210),
(14, 'Socks', 'Clothing', 5.00, 500),
(15, 'Gloves', 'Clothing', 10.00, 300),
(16, 'Speaker', 'Electronics', 70.00, 130),
(17, 'Charger', 'Electronics', 20.00, 350),
(18, 'Backpack', 'Accessories', 50.00, 140),
(19, 'Sunglasses', 'Accessories', 80.00, 160),
(20, 'Watch', 'Accessories', 90.00, 110);

INSERT INTO Customers (customer_id, first_name, last_name, email, phone, address) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, Cityville'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Elm St, Townburg'),
(3, 'Robert', 'Johnson', 'robert.j@example.com', '2345678901', '789 Oak St, Villagetown'),
(4, 'Emily', 'Davis', 'emily.d@example.com', '3456789012', '101 Pine St, Cityburg'),
(5, 'Michael', 'Brown', 'michael.b@example.com', '4567890123', '202 Maple St, Townville'),
(6, 'Sarah', 'Williams', 'sarah.w@example.com', '5678901234', '303 Cedar St, Villageville'),
(7, 'David', 'Jones', 'david.j@example.com', '6789012345', '404 Birch St, Hamletville'),
(8, 'Laura', 'Miller', 'laura.m@example.com', '7890123456', '505 Spruce St, Townburg'),
(9, 'Daniel', 'Wilson', 'daniel.w@example.com', '8901234567', '606 Fir St, Cityburg'),
(10, 'Sophia', 'Moore', 'sophia.m@example.com', '9012345678', '707 Redwood St, Villageville'),
(11, 'James', 'Taylor', 'james.t@example.com', '0123456789', '808 Aspen St, Hamletville'),
(12, 'Olivia', 'Anderson', 'olivia.a@example.com', '1123456789', '909 Sequoia St, Townville'),
(13, 'William', 'Thomas', 'william.t@example.com', '2123456789', '1010 Sycamore St, Cityville'),
(14, 'Isabella', 'Jackson', 'isabella.j@example.com', '3123456789', '1111 Maple St, Villagetown'),
(15, 'Charles', 'White', 'charles.w@example.com', '4123456789', '1212 Elm St, Cityburg'),
(16, 'Mia', 'Harris', 'mia.h@example.com', '5123456789', '1313 Oak St, Villageville'),
(17, 'Henry', 'Martin', 'henry.m@example.com', '6123456789', '1414 Pine St, Townburg'),
(18, 'Ava', 'Thompson', 'ava.t@example.com', '7123456789', '1515 Cedar St, Cityville'),
(19, 'Alexander', 'Garcia', 'alexander.g@example.com', '8123456789', '1616 Birch St, Hamletville'),
(20, 'Amelia', 'Martinez', 'amelia.m@example.com', '9123456789', '1717 Spruce St, Villageburg');

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-09-01', 1320.00),
(2, 2, '2024-09-02', 60.00),
(3, 3, '2024-09-03', 250.00),
(4, 4, '2024-09-04', 300.00),
(5, 5, '2024-09-05', 700.00),
(6, 6, '2024-09-06', 45.00),
(7, 7, '2024-09-07', 850.00),
(8, 8, '2024-09-08', 190.00),
(9, 9, '2024-09-09', 400.00),
(10, 10, '2024-09-10', 1000.00),
(11, 11, '2024-09-11', 20.00),
(12, 12, '2024-09-12', 150.00),
(13, 13, '2024-09-13', 210.00),
(14, 14, '2024-09-14', 330.00),
(15, 15, '2024-09-15', 90.00),
(16, 16, '2024-09-16', 600.00),
(17, 17, '2024-09-17', 450.00),
(18, 18, '2024-09-18', 750.00),
(19, 19, '2024-09-19', 510.00),
(20, 20, '2024-09-20', 970.00);

INSERT INTO Orders (order_id, order_date, customer_id, total_amount) VALUES
(21, '2024-06-01', 2, 450.00),
(22, '2024-06-03', 3, 300.00),
(23, '2024-06-05', 4, 120.00),
(24, '2024-06-07', 5, 680.00),
(25, '2024-06-09', 6, 530.00),
(26, '2024-06-11', 1, 220.00),
(27, '2024-06-13', 7, 250.00),
(28, '2024-06-15', 8, 310.00),
(29, '2024-06-17', 9, 470.00),
(30, '2024-06-19', 10, 390.00),
(31, '2024-06-21', 11, 640.00),
(32, '2024-06-23', 12, 450.00),
(33, '2024-06-25', 13, 730.00),
(34, '2024-06-27', 14, 520.00),
(35, '2024-07-01', 15, 800.00),
(36, '2024-07-03', 16, 340.00),
(37, '2024-07-05', 17, 610.00),
(38, '2024-07-07', 18, 280.00),
(39, '2024-07-09', 19, 390.00),
(40, '2024-07-11', 20, 350.00),
(41, '2024-07-13', 2, 500.00),
(42, '2024-07-15', 3, 420.00),
(43, '2024-07-17', 4, 670.00),
(44, '2024-07-19', 5, 580.00),
(45, '2024-07-21', 6, 510.00),
(46, '2024-07-23', 1, 490.00),
(47, '2024-07-25', 7, 720.00),
(48, '2024-07-27', 8, 310.00),
(49, '2024-07-29', 9, 450.00),
(50, '2024-07-31', 10, 530.00),
(51, '2024-08-02', 11, 470.00),
(52, '2024-08-04', 12, 680.00),
(53, '2024-08-06', 13, 430.00),
(54, '2024-08-08', 14, 570.00),
(55, '2024-08-10', 15, 520.00),
(56, '2024-08-12', 16, 430.00),
(57, '2024-08-14', 17, 670.00),
(58, '2024-08-16', 18, 720.00),
(59, '2024-08-18', 19, 510.00),
(60, '2024-08-20', 20, 380.00),
(61, '2024-08-22', 2, 750.00),
(62, '2024-08-24', 3, 650.00),
(63, '2024-08-26', 4, 590.00),
(64, '2024-08-28', 5, 640.00),
(65, '2024-08-30', 6, 410.00),
(66, '2024-09-01', 1, 530.00),
(67, '2024-09-03', 7, 620.00),
(68, '2024-09-05', 8, 780.00),
(69, '2024-09-07', 9, 330.00),
(70, '2024-09-09', 10, 590.00),
(71, '2024-09-11', 11, 640.00),
(72, '2024-09-13', 12, 350.00),
(73, '2024-09-15', 13, 420.00),
(74, '2024-09-17', 14, 710.00),
(75, '2024-09-19', 15, 430.00);


INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 800.00),
(2, 1, 2, 1, 500.00),
(3, 2, 3, 3, 60.00),
(4, 3, 7, 1, 250.00),
(5, 4, 8, 2, 400.00),
(6, 5, 1, 1, 800.00),
(7, 5, 9, 8, 200.00),
(8, 6, 3, 2, 40.00),
(9, 7, 2, 1, 500.00),
(10, 7, 5, 2, 60.00),
(11, 8, 18, 2, 100.00),
(12, 9, 4, 5, 200.00),
(13, 10, 10, 10, 150.00),
(14, 11, 14, 2, 10.00),
(15, 12, 13, 10, 50.00),
(16, 13, 17, 5, 100.00),
(17, 14, 6, 2, 300.00),
(18, 15, 20, 1, 90.00),
(19, 16, 12, 5, 600.00),
(20, 17, 19, 7, 350.00);


INSERT INTO Inventory (inventory_id, product_id, quantity_received, date_received) VALUES
(1, 1, 30, '2024-08-25'),
(2, 2, 100, '2024-08-26'),
(3, 3, 200, '2024-08-27'),
(4, 4, 150, '2024-08-28'),
(5, 5, 120, '2024-08-29'),
(6, 6, 75, '2024-08-30'),
(7, 7, 50, '2024-08-31'),
(8, 8, 80, '2024-09-01'),
(9, 9, 400, '2024-09-02'),
(10, 10, 450, '2024-09-03'),
(11, 11, 180, '2024-09-04'),
(12, 12, 90, '2024-09-05'),
(13, 13, 210, '2024-09-06'),
(14, 14, 500, '2024-09-07'),
(15, 15, 300, '2024-09-08'),
(16, 16, 130, '2024-09-09'),
(17, 17, 350, '2024-09-10'),
(18, 18, 140, '2024-09-11'),
(19, 19, 160, '2024-09-12'),
(20, 20, 110, '2024-09-13');
