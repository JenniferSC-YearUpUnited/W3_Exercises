## List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name ##
## Left table is "products" ##
## Right table is "categories" ##
## Add ORDERBY two columns: categoryname & productname##

SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName
FROM products 
INNER JOIN categories 
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

##  List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name ##

SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
FROM products 
INNER JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY Productname;

## List the product id, product name, unit price, category name, and supplier name of every product. Order by product name ## 

SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName, suppliers.CompanyName
FROM products
JOIN categories ON products. CategoryID = Categories.CategoryID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID 
ORDER BY ProductName;

## List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany ##
SELECT orders.OrderID,  