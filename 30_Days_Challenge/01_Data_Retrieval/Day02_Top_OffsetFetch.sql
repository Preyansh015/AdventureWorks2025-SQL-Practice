/* ============================================================
   Day 02: Limiting Rows
   Topics   : TOP, TOP PERCENT, WITH TIES, OFFSET-FETCH
   Database : AdventureWorks2025
   Table    : Production.Product
   ============================================================ */

USE AdventureWorks2025;
GO

-- Q1: Show the 10 most expensive products (name and price).
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q2: Show the 5 cheapest products that have ListPrice > 0.
SELECT TOP 5 Name, ListPrice
FROM Production.Product
WHERE ListPrice > 0
ORDER BY ListPrice ASC;

-- Q3: Show the top 5 products by price, including any ties with the 5th price.
SELECT TOP 5 WITH TIES Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q4: Show the top 10% of products by ListPrice.
SELECT TOP 10 PERCENT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q5: Show page 3 of products sorted by name, with 10 products per page.
SELECT Name, ListPrice
FROM Production.Product
ORDER BY Name
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;