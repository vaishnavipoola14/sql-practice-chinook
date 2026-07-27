-- Q2: List each invoice's InvoiceId, InvoiceDate, and the customer's FirstName and LastName who made it
SELECT i.InvoiceId, i.InvoiceDate, c.FirstName, c.LastName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId;