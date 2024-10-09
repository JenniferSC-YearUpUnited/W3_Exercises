SELECT ProductID, ProductName, UnitPrice FROM northwind.products;
## Write a query to list the product id, product name, and unit price of every product that Northwind sells ##

SELECT ProductName
FROM northwind.products
WHERE UnitPrice <= 7.50;
## What are the products that we carry where the unit price is $7.50 or less? ## 
## Konbu, Guaran Fantstica, Geitost, Filo Mix, Tourtire ##

SELECT ProductName, UnitsInStock, UnitsOnOrder FROM northwind.products; 


SELECT ProductName
FROM northwind.products 
WHERE UnitsInstock = 0
AND UnitsOnOrder >= 1;
## What are the products that we carry where we have no units on hand, but 1 or more units are on backorder? ## 
## Gorgonzola Telino ##

SELECT * FROM northwind.products;
## How does the products table identify the type (category) of each item sold? ## 
## The prdoucts table identifys the type or category of each item sold by the catergoryID assigning a number for each category ## 

SELECT ProductName
FROM northwind.products 
WHERE CategoryID = 8; 
## Write a query to list all the seafood items we carry ## 
## Ikura, Konbu, Carnarvon Tigers, Nord-Ost Matjeshering, Inlagd Sill, Gravad lax, Boston Crab Meat, Jack's New England Clam Chowder,Rogede sild, Spegeslid, Escargots de Bourgogne, Rd Kaviar ##

SELECT * FROM northwind.employees; 


SELECT FirstName, LastName	
FROM northwind.employees
WHERE Title LIKE "%manager%";
## What employees have "manager" in their titles? ##
## Steven Buchanan ##

SELECT * FROM northwind.products;
## How do you know what supplier supplies each product?  ## 
## The prdoucts table identifys the supplier of each product by the SupplierID assigning a number for each supplier ## 

SELECT ProductName
FROM northwind.products 
WHERE SupplierID = 4;
## Write a query to list all of the items that "Tokyo Traders" supplies to Northwind ##
## Mishi Kobe Niku, Ikura, Longlife Tofu ##
