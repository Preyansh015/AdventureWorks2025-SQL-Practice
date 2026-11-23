/* Day 01: Data Retrieval
   Topics: SELECT, WHERE, ORDER BY, DISTINCT
   Database: AdventureWorks2025 */
USE AdventureWorks2025;
GO


--Table: Production.Product

--A manager wants a list of all product names, colors and list prices. Show the most expensive products first.
SELECT Name, Color, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

--Which different colors do our products come in? Remove duplicates and NULLs.
SELECT DISTINCT Color
FROM Production.Product
WHERE Color IS NOT NULL;
 
--Show the products that cost more than 1000 (ListPrice) and are Red or Black.
SELECT ProductID, Name
FROM Production.Product
WHERE ListPrice > 1000 
AND Color IN ('Red' , 'Black');

--Table: Person.Person

--Show the first and last names of all people whose last name is Smith, sorted by first name.
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName = 'Smith'
ORDER BY FirstName;

--Which different person types (PersonType) exist in the company?
SELECT DISTINCT Persontype
FROM Person.Person;
