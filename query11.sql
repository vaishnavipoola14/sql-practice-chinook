SELECT strftime('%Y', InvoiceDate) AS Year, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY Year
ORDER BY Year;
