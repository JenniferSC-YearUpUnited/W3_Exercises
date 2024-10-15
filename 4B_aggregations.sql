##  What is the price of the cheapest item that Northwind sells? ## 
SELECT MIN(UnitPrice) AS 'LowestPriceItem'
FROM products;

## What is the average price of items that Northwind sells? ##
SELECT AVG(UnitPrice) AS 'AvgPriceItem' 
FROM products;

## What is the price of the most expensive item that Northwind sells? ## 
SELECT MAX(UnitPrice) AS 'HighestPriceItem'
FROM products;


## What is the sum of all the employee's salaries? ## 
SELECT SUM(Salary) AS 'TotalSalary'
FROM employees; 

## Which employee makes the highest salary, and which employee makes the lowest? ## 
SELECT FirstName, LastName, (SELECT MAX(Salary) FROM employees) As 'High&LowSalary'
FROM employees
WHERE FirstName = "Janet"
UNION
SELECT FirstName, LastName, 
(SELECT MIN(Salary) FROM employees)
FROM employees
WHERE Salary < 1744.21;

## What is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the products table. ## 
SELECT SupplierID, COUNT(DISTINCT QuantityPerUnit) AS 'TotalItems' 
FROM products
GROUP BY SupplierID;



## What is the category ID of each category and the average price of each item in the category? (You can answer this query by only looking at the products table.) ##
SELECT CategoryID, AVG(UnitPrice) AS 'AvgPrice'
FROM products
GROUP BY CategoryID; 
 
## For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? (Again, you can answer this query by only looking at the products table.) ## 
SELECT SupplierID, COUNT(ProductName) AS 'totalitems' 
FROM products
GROUP BY SupplierID
HAVING totalitems >= 5;


##List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name ##
## Raviloi Angelo and Chai had the same value of 702 ## 
SELECT ProductID, ProductName, (UnitPrice*UnitsInStock) AS 'inventoryvalue'
 FROM products
ORDER BY ProductName; 











