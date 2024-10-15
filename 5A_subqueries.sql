## What is the product name(s) of the most expensive products? HINT: Find the max price in a subquery and then use that value to find products whose price equals that value ##
SELECT ProductName,
(SELECT MAX(UnitPrice) 
FROM products) As 'MostExpensiveItem'
FROM products
WHERE UnitPrice = "263.5000";

## What is the product name(s) and categories names of the most expensive products? HINT: Find the max price in a subquery and then use that in your more complex query that joins products with categories ## 
SELECT ProductName, CategoryName,
(SELECT MAX(UnitPrice)
FROM products) AS 'mostexpensive'
FROM products 
JOIN categories ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = 263.5000;




## What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery and then use that value to find the orders that used that shipper ## 
SELECT OrderID, ShipName, ShipAddress,
(SELECT MAX(ShipperID) FROM shippers ) AS 'shippingcomp'
FROM shippers
JOIN orders ON shippers.ShipperID = orders.ShipVia
WHERE ShipperID = 3; 



## What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the product id of "Sasquatch Ale" in a subquery and then use that value to find the matching orders from the 'order details' table  ## 
SELECT OrderID,
( SELECT ProductID
FROM products WHERE ProductName = "Sasquatch Ale") 'ProductName'
FROM products
JOIN orderdetails  ON products.ProductID = orderdetails.ProductID; 

## What is the name of the employee that sold order 10266?## 
SELECT FirstName, LastName,
(SELECT EmployeeID 
FROM orders
WHERE OrderID = "10266") AS 'Employee'
FROM orders
JOIN employees ON orders.EmployeeID = employees.EmployeeID
WHERE OrderID = "10266"; 

## What is the name of the customer that bought order 10266? ## 
SELECT CompanyName,
(SELECT CustomerID 
FROM orders
WHERE OrderID = "10266") AS "Customer"
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE OrderID = "10266";





