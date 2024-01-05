
-- Creating the Customers table
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
	LastName VARCHAR(50),
    Address1 VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    PasswordHash BYTEA, -- Storing hashed passwords
    DateEntered TIMESTAMP,
    Status VARCHAR(20) DEFAULT 'Active'
);

-- Creating the BillingInfo table
CREATE TABLE BillingInfo (
    BillingID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    BillingAddress VARCHAR(250),
    BillingCity VARCHAR(50),    
	PostalCode VARCHAR(20),
	BillingCountry VARCHAR(50),
	UNIQUE (BillingID, CustomerID)
);

-- Creating the ShippingInfo table
CREATE TABLE ShippingInfo (
    ShippingID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    ShipAddress VARCHAR(250),
    ShipCity VARCHAR(50),
    ShipPostalCode VARCHAR(20),
    ShipCountry VARCHAR(50),
    UNIQUE (ShippingID, CustomerID)  
);


-- Creating the Products table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    Category VARCHAR(50),
    AvailableSizes VARCHAR(50),
    AvailableColors VARCHAR(50),
    Price DECIMAL(10, 2),
    Status VARCHAR(20) DEFAULT 'Available'    
);

-- Creating the Orders table
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderNumber INT UNIQUE,
    PaymentID INT,
    OrderDate TIMESTAMP,
    ShipDate TIMESTAMP,
    RequiredDate TIMESTAMP,
    ShipperID INT,
    TransactionStatus VARCHAR(50) DEFAULT 'Pending',
    Paid BOOLEAN DEFAULT FALSE,
    PaymentDate TIMESTAMP    
);

-- Creating the OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    OrderNumber INT REFERENCES Orders(OrderNumber),
    Price DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Total DECIMAL(10, 2),
    Size VARCHAR(20),
    Color VARCHAR(20),
    ShipDate TIMESTAMP,
    BillDate TIMESTAMP,
    UNIQUE (OrderDetailID)
);
