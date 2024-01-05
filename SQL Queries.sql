
-- QUERY CASE 1: CHECKING FOR THE GDPR COMPLIANCE
-- For the purpose of simulating the scenario when all of the customer related data is deleted, the DELETE query is executed
-- All the data related to the customer with the CustomerID = 2 is deleted


-- Deleting from OrderDetails first
DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 2);

-- Deleting from Orders
DELETE FROM Orders
WHERE CustomerID = 2;

-- Deleting from ShippingInfo
DELETE FROM ShippingInfo
WHERE CustomerID = 2;

-- Deleting from BillingInfo
DELETE FROM BillingInfo
WHERE CustomerID = 2;

-- Deleting from Customers
DELETE FROM Customers
WHERE CustomerID = 2;

-- Checking if there are any records in OrderDetails related to CustomerID = 2
DO $$
BEGIN
	PERFORM 1 FROM OrderDetails WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 2);
	IF FOUND THEN
		RAISE NOTICE 'Records found in OrderDetails for CustomerID = 2';
	ELSE RAISE NOTICE 'No records found in OrderDetails for CustomerID = 2';
	END IF;
END $$;    

-- Checking if there are any records in Orders for CustomerID = 2
DO $$
BEGIN
	PERFORM 1 FROM Orders WHERE CustomerID = 2;
	IF FOUND THEN
		RAISE NOTICE 'Records found in Orders for CustomerID = 2';
	ELSE RAISE NOTICE 'No records found in Orders for CustomerID = 2';
	END IF;	
END $$;

-- Checking if there are any records in BillingInfo for CustomerID = 2
DO $$
BEGIN
	PERFORM 1 FROM BillingInfo WHERE CustomerID = 2;
    IF FOUND THEN
		RAISE NOTICE 'Records found in Orders for CustomerID = 2';
	ELSE RAISE NOTICE 'No records found in Orders for CustomerID = 2';
	END IF;
END $$;

-- Checking if there are any records in Customers for CustomerID = 2
DO $$
BEGIN
	PERFORM 1 FROM Customers WHERE CustomerID = 2;
	IF FOUND THEN 
		RAISE NOTICE 'Records found in Orders for CustomerID = 2';
	ELSE RAISE NOTICE 'No records found in Orders for CustomerID = 2';
	END IF;    
END $$;	

-- Checking if there are any records in Customers for CustomerID = 2
DO $$
BEGIN
	PERFORM 1 FROM Customers WHERE CustomerID = 2;
    IF FOUND THEN
		RAISE NOTICE 'Records found in Orders for CustomerID = 2';
	ELSE RAISE NOTICE 'No records found in Orders for CustomerID = 2';
	END IF;
END $$;

-- QUERY CASE 2: CHECKING FOR ORDER FULFILLMENT
-- Retrieving data for orders, where the shipping date surpases required date
SELECT 
    O.OrderID,
    O.OrderNumber,
    O.OrderDate,
    O.ShipDate,
    O.RequiredDate,
    O.TransactionStatus,
    C.CustomerID,
    C.FirstName,
    C.LastName,
    C.Address1,
    C.City,
    C.PostalCode,
    C.Country,
    SI.ShipAddress AS ShippingAddress,
    SI.ShipCity,
    SI.ShipPostalCode,
    SI.ShipCountry
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
JOIN 
    ShippingInfo SI ON O.CustomerID = SI.CustomerID
WHERE 
    O.ShipDate > O.RequiredDate;

-- QUERY CASE 3: CHECKING THE STOCK STATUS OF PRODUCTS
-- Retrieving the data for the products, which are out of stock or discontinued

SELECT
    P.ProductName,
    P.Category,
    CASE
        WHEN P.Status = 'Out of Stock' THEN 'Out of Stock'
        WHEN P.Status = 'Discontinued' THEN 'Discontinued'
        ELSE 'Available'
    END AS AvailabilityStatus
FROM
    Products P
WHERE
    P.Status = 'Out of Stock' OR P.Status = 'Discontinued';
	

-- QUERY CASE 4: Assessing the payment status
-- Retrieving the data for orderswith pending transactions
-- Retrieving the related data from other tables, including customer details

SELECT
    O.OrderID,
    O.CustomerID,
    C.FirstName,
    C.LastName,
    C.Address1,
    C.City,
    C.PostalCode AS CustomerPostalCode,
    C.Country AS CustomerCountry,
    O.OrderNumber,
    O.OrderDate,
    O.RequiredDate,
    O.ShipDate,
    O.TransactionStatus,
    O.Paid,
    O.PaymentDate
FROM
    Orders AS O
INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE
    O.TransactionStatus = 'Pending';


-- QUERY CASE 5: Delivery timeline
-- Identifying orders with significant delays between order and shipping dates
SELECT
    Orders.OrderID,
    Orders.CustomerID,
    Orders.OrderNumber,
    Orders.OrderDate,
    Orders.ShipDate,
    EXTRACT(day FROM Orders.OrderDate - Orders.ShipDate) AS DaysDelayed
FROM
    Orders
WHERE
    Orders.ShipDate > Orders.OrderDate;

  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	