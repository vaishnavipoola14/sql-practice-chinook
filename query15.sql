SELECT g.Name, SUM(il.Quantity) AS TotalSold,
  CASE 
    WHEN SUM(il.Quantity) > 500 THEN 'Popular'
    ELSE 'Niche'
  END AS Category
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY TotalSold DESC;
