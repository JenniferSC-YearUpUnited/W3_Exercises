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
## NEED HELP ## 
SELECT EmployeeID, MAX(Salary) AS 'HighestPayer', MIN(Salary) AS 'LowestPayer'
FROM employees
GROUP BY EmployeeID
HAVING MAX(Salary)= 3119.15 AND MIN(Salary)= 1744.21;
 







