SELECT
    BillingCountry,
    SUM(Total) AS TotalSales,
    CASE
        WHEN SUM(Total) > 100 THEN 'High Revenue'
        ELSE 'Low Revenue'
    END AS RevenueCategory
FROM Invoice
GROUP BY BillingCountry;
