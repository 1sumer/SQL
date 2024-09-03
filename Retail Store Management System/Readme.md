# SQL E-Commerce Data Analysis

## Project Overview
This project involves creating and managing a relational database for an e-commerce platform. The database includes multiple tables such as `Customers`, `Orders`, `OrderDetails`, and `Products`, designed to store and manage customer information, product details, and order transactions. The project showcases the use of SQL to perform complex queries, data manipulation, and analysis.

## Features
- **Database Schema**: The project involves designing a normalized database schema with foreign key relationships to ensure data integrity.
- **Data Insertion**: Includes SQL scripts to insert sample data into the tables, ensuring a realistic dataset for analysis.
- **Complex Queries**: Perform advanced SQL queries to analyze customer behavior, product performance, and order trends.
- **Case Study Questions**: Solve real-world business problems using SQL queries, including customer segmentation, product demand analysis, and sales trend evaluation.

## Tables and Data
### `Customers`
Contains customer details such as customer ID, name, email, and address.

### `Orders`
Stores order information, including order ID, date, customer ID, and total amount.

### `OrderDetails`
Links products with orders, detailing the quantity ordered and the associated order ID.

### `Products`
Holds product information, including product ID, name, category, price, and stock quantity.

## Sample Data
- **Customers**: 20 sample entries
- **Orders**: 70+ sample entries spanning over 3 months, including multiple orders from the same customers.
- **OrderDetails**: Detailed breakdown of each order's product quantities.
- **Products**: Catalog of 10+ products across various categories.

## Key SQL Queries
1. **Top Spending Customers**: Identify customers with the highest total spending.
2. **Sales by Category**: Calculate total sales for each product category.
3. **Inactive Customers**: List customers who have not placed an order in the last 6 months.
4. **Product Reorder Point**: Determine the reorder point for each product to avoid stockouts.
5. **Orders with Diverse Products**: Find orders that include products from multiple categories.

## Installation and Usage
1. **Database Setup**: Create a new database and import the provided SQL script to set up the schema and populate the tables.
2. **Run Queries**: Use a SQL client like MySQL Workbench to run the provided queries and analyze the data.
3. **Modify Data**: Add or modify the data as needed to explore additional scenarios.

## Conclusion
This project provides a comprehensive foundation for understanding and implementing SQL in a real-world e-commerce environment. By working through the case study questions and SQL queries, you will gain hands-on experience with data analysis and database management.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
