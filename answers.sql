-- Question 1
CREATE TABLE ProductDetails_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

-- normalized rows:
INSERT INTO ProductDetails VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetails VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetails VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetails VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetails VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetails VALUES (103, 'Emily Clark', 'Phone');

-- Question 2
-- Table 1: Orders (stores customer name separately)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Table 2: OrderItems (stores product details)
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert into Orders
INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- Insert into OrderItems
INSERT INTO OrderItems VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems VALUES (102, 'Tablet', 3);
INSERT INTO OrderItems VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems VALUES (103, 'Phone', 1);
