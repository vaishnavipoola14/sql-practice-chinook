SELECT e.FirstName, e.LastName, m.FirstName AS ManagerFirstName, m.LastName AS ManagerLastName
FROM Employee e
JOIN Employee m ON e.ReportsTo = m.EmployeeId;
