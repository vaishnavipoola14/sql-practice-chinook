SELECT c.FirstName, c.LastName, SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'USA'
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 3;
