SELECT FirstName, LastName, Country
FROM Customer
WHERE Country = (SELECT Country FROM Customer WHERE CustomerId = 1);