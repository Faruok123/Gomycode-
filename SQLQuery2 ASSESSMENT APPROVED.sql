USE COMPANY 

CREATE TABLE Customer( 
Customer_id INT NOT NULL PRIMARY KEY, 
CustomerName VARCHAR(30) NOT NULL,
CustomerEmail VARCHAR(30) NOT NULL,
CustomerAddress VARCHAR(30) NOT NULL,
)

CREATE TABLE order_table(
Order_id INT NOT NULL PRIMARY KEY,
Customer_id INT NOT NULL FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
Product_id INT NOT NULL FOREIGN KEY(Product_id) REFERENCES PRODUCTS(Product_id),
Quantity INT NOT NULL,
Order_date DATE NOT NULL
)

CREATE TABLE PRODUCTS(
Product_id INT NOT NULL PRIMARY KEY,
ProductName VARCHAR(50),
ProductPrice DECIMAL(10,2) CHECK (ProductPrice > 0)
)

SELECT * FROM  order_table



