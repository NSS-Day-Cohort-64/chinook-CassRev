-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name
SELECT 
    i.Total AS Invoice_Total,
    cu.FirstName || ' ' || cu.LastName AS Customer_Name,
    cu.Country AS Customer_Country,
    e.FirstName || ' ' || e.LastName AS SalesAgent_FullName
FROM Invoice i 
JOIN Customer cu, Employee e 
ON cu.CustomerId = i.CustomerId AND e.EmployeeId = cu.SupportRepId;