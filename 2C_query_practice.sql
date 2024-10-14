## Write a query to list the product id, product name, and unit price of every product. Display them in ascending order by price ##
 
SELECT ProductID, ProductName, UnitPrice 
FROM northwind.products
ORDER BY UnitPrice ASC;

## What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price ##
## No two or more have the same unit price on the output results ## 
SELECT ProductName, UnitPrice
FROM northwind.products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

#### Write a query against the orders table that displays the total number of distinct customers who have placed orders by customerid ## 

SELECT CustomerID, COUNT(DISTINCT OrderID) AS 'totalorders'
FROM orders
GROUP BY CustomerID; 

#### Write a query against the orders table that displays the total number of distinct  customers who have placed orders, by customer ID, for each country where orders have been shipped ##
SELECT * FROM orders; 
SELECT CustomerID, COUNT(DISTINCT OrderID) AS 'totalorders', ShipCountry
FROM orders
GROUP BY CustomerID, ShipCountry; 

## What are the products that we carry where we have no units on hand, but 1 or more units of them are on backorder? Order them by product name ## 
 
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM northwind.products
WHERE UnitsInStock =0 AND UnitsOnOrder >=1
ORDER BY ProductName; 

## List the distinct job titles in employees ## 

SELECT DISTINCT Title
FROM northwind.employees;

##  What employees have a salary that is between $2000 and $2500? Order them by job title ##
SELECT FirstName, LastName, Title
FROM northwind.employees
WHERE Salary Between 2000 AND 2500
ORDER BY Title;
